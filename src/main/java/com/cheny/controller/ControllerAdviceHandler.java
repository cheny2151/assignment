package com.cheny.controller;

import com.cheny.utils.JsonMessage;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * controller通知类
 */
@ControllerAdvice
public class ControllerAdviceHandler {

    /**
     * 所有控制器异常统一处理,代替继承BaseController的方案
     * 可以返回视图,也可以返回json等(可在参数拿到request,response)
     *
     * @return
     */
    @ExceptionHandler({NoHandlerFoundException.class})
    @ResponseStatus(code = HttpStatus.NOT_FOUND)
    @ResponseBody
    public JsonMessage exceptionHandler() {
        return JsonMessage.error("error_404");
    }

    /**
     * 另一种方式
     */
    @ExceptionHandler()
    public void exceptionHandler_b(IllegalArgumentException e, HttpServletResponse response) {
        response.setContentType("application/json;charset=utf-8");
        try {
            response.getWriter().write("{\"message\":\"error\",\"code\":0}");
        } catch (IOException e1) {
            e1.printStackTrace();
        }
    }

}
