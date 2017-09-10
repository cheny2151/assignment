package com.cheny.controller;

import com.cheny.VO.Message;
import com.cheny.template.FlushMessageDirective;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by cheny on 2017/8/20.
 * 入口controller
 */
@Controller
public class PageController extends BaseController {

    @RequestMapping("/index")
    public String index() {
        return "/index";
    }

    @RequestMapping(value = "/page/{a}_{b}", method = RequestMethod.GET)
    public String forward(@PathVariable String a, @PathVariable String b) {
        return "/" + a + "_" + b;
    }

}
