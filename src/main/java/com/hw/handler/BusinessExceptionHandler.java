package com.hw.handler;

import com.hw.clazz.BlacklistException;
import com.hw.shared.ErrorMessage;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.oauth2.common.exceptions.UnauthorizedClientException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

@ControllerAdvice
public class BusinessExceptionHandler extends ResponseEntityExceptionHandler {

    @ExceptionHandler(value = {BlacklistException.class})
    protected ResponseEntity<?> handleException(RuntimeException ex, WebRequest request) {
        return handleExceptionInternal(ex, new ErrorMessage(ex), new HttpHeaders(), HttpStatus.BAD_REQUEST, request);
    }

    @ExceptionHandler(value = {UnauthorizedClientException.class})
    protected ResponseEntity<?> handle401Exception(RuntimeException ex, WebRequest request) {
        return handleExceptionInternal(ex, new ErrorMessage(ex), new HttpHeaders(), HttpStatus.UNAUTHORIZED, request);
    }

    @ExceptionHandler(value = {AccessDeniedException.class})
    protected ResponseEntity<?> handle403Exception(RuntimeException ex, WebRequest request) {
        return handleExceptionInternal(ex, new ErrorMessage(ex), new HttpHeaders(), HttpStatus.FORBIDDEN, request);
    }

}
