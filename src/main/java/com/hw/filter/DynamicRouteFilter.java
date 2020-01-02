package com.hw.filter;

import com.hw.entity.SecurityProfile;
import com.hw.repo.SecurityProfileRepo;
import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.util.AntPathMatcher;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import static com.hw.clazz.Constant.EDGE_PROXY_UNMAPPED_ROUTE;

@Component
public class DynamicRouteFilter extends ZuulFilter {

    @Autowired
    SecurityProfileRepo securityProfileRepo;

    @Override
    public String filterType() {
        return "pre";
    }


    @Override
    public int filterOrder() {
        return 101;
    }


    @Override
    public boolean shouldFilter() {
        RequestContext ctx = RequestContext.getCurrentContext();
        String requestURL = ctx.getRequest().getRequestURL().toString();
        return !(requestURL.contains("proxy") || requestURL.contains("token"));
    }

    @Autowired
    AntPathMatcher antPathMatcher;


    public List<String> getDynamicUrlParams(String requestURI, SecurityProfile securityProfile) {
        /**
         * e.g. /api/profiles/100 ==> /api/profiles/**
         *      /api/profiles/100/addresses/100  ==> /api/profiles/**\/addresses/**
         */
        List<String> paramList = new ArrayList<>();
        String[] split = requestURI.split("/");
        String[] split1 = securityProfile.getPath().split("/");
        IntStream.range(0, split1.length)
                .filter(i -> split1[i].equals("**"))
                .forEach(i -> {
                    paramList.add(split[i]);
                });
        return paramList;
    }

    public String updateTargetUrl(List<String> params, String url) {
        if (params.size() == 0)
            return url;
        for (String param : params) {
            url = url.replaceFirst("/\\*\\*", "/" + param);
        }
        return url;
    }

    @Override
    public Object run() {
        RequestContext ctx = RequestContext.getCurrentContext();
        String requestURI = ctx.getRequest().getRequestURI();
        String method = ctx.getRequest().getMethod();
        List<SecurityProfile> all = securityProfileRepo.findAll();
        List<SecurityProfile> collect1 = all.stream().filter(e -> antPathMatcher.match(e.getPath(), requestURI) && e.getMethod().equals(method)).collect(Collectors.toList());
        /**
         * find closet match, size of collect1 should be either 0 or 1
         */
        if (collect1.size() != 1)
            collect1 = collect1.stream().filter(e -> !e.getPath().contains("/**")).collect(Collectors.toList());
        /**
         * modify url
         */
        if (collect1.size() != 0) {
            SecurityProfile securityProfile = collect1.get(0);
            List<String> dynamicUrlParams = getDynamicUrlParams(requestURI, securityProfile);
            String s = updateTargetUrl(dynamicUrlParams, securityProfile.getUrl());
            ctx.set("requestURI", "");
            try {
                ctx.setRouteHost(new URL(s));
            } catch (MalformedURLException e) {
                /**
                 * this block is purposely left blank
                 */
            }
        } else {
            ctx.getRequest().setAttribute(EDGE_PROXY_UNMAPPED_ROUTE, Boolean.TRUE);
            ctx.setSendZuulResponse(false);
            ctx.setResponseStatusCode(HttpStatus.NOT_FOUND.value());
        }
        return null;
    }

}
