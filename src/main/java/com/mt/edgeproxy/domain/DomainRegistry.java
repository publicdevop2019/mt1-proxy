package com.mt.edgeproxy.domain;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DomainRegistry {
    private static RevokeTokenRepository revokeTokenRepository;
    private static RevokeTokenService revokeTokenService;
    private static RetrieveEndpointService retrieveEndpointService;
    private static JwtService jwtService;

    public static JwtService jwtService() {
        return jwtService;
    }

    public static RetrieveEndpointService retrieveEndpointService() {
        return retrieveEndpointService;
    }

    public static RevokeTokenRepository revokeTokenRepository() {
        return revokeTokenRepository;
    }

    public static RevokeTokenService revokeTokenService() {
        return revokeTokenService;
    }


    @Autowired
    public void setRevokeTokenRepository(RevokeTokenRepository revokeTokenRepository) {
        DomainRegistry.revokeTokenRepository = revokeTokenRepository;
    }

    @Autowired
    public void setRetrieveEndpointService(RetrieveEndpointService retrieveEndpointService) {
        DomainRegistry.retrieveEndpointService = retrieveEndpointService;
    }

    @Autowired
    public void setRevokeTokenService(RevokeTokenService revokeTokenService) {
        DomainRegistry.revokeTokenService = revokeTokenService;
    }

    @Autowired
    public void setJwtService(JwtService jwtService) {
        DomainRegistry.jwtService = jwtService;
    }

    private static EndpointService endpointService;

    public static EndpointService endpointService() {
        return endpointService;
    }


    @Autowired
    public void setLoadEndpointService(EndpointService roadEndpointService) {
        DomainRegistry.endpointService = roadEndpointService;
    }

}
