package com.cheny.controller;

import com.cheny.entity.Analyst;
import com.cheny.service.AnalystService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

/**
 * Created by cheny on 2017/8/13.
 */
@Controller("analystController")
@RequestMapping("/analyst")
public class AnalystController {

    @Resource(name = "analystServiceImpl")
    private AnalystService analystService;

    @RequestMapping("/test")
    public void test() {
        try {
            Analyst analyst = analystService.find(1L);
            System.out.println(analyst.getAnalystName());
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public void add(Analyst analyst) {
//        analystService.persist(analyst);
    }

}
