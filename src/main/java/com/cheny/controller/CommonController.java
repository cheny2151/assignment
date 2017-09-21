package com.cheny.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by cheny on 2017/9/20.
 */
@Controller
public class CommonController {

    @RequestMapping("/404.action")
    public String noFind(){
        return "/error_404";
    }
}
