package com.cheny.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;


/**
 * 基类
 * Created by cheny on 2017/7/25.
 */
@Controller
public class BaseController {

    protected Logger logger = Logger.getLogger(this.getClass());

    /*@ExceptionHandler
    public String errorView(Exception ex) {
        logger.error(ex.getMessage());
        return "/404";
    }*/

}
