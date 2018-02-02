package com.cheny.controller;

import com.cheny.entity.Analyst;
import com.cheny.service.AnalystService;
import com.cheny.service.AreaService;
import com.cheny.utils.JdkRedisClientImpl;
import org.junit.Test;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.*;
import java.lang.reflect.Proxy;

/**
 * Created by cheny on 2017/12/3.
 */
@Controller
public class TestController {

    @Resource(name = "jdkRedisClient")
    private JdkRedisClientImpl<String> redisClient;
    @Resource(name = "areaServiceImpl")
    private AreaService areaService;
    @Resource(name = "analystServiceImpl")
    private AnalystService analystService;

    @RequestMapping("/test")
    @ResponseBody
    public String test() {

//        test2();
//        return null;
//        areaService.find(1L);
//        System.out.println("---------");
//        analystService.find(1L);
        return "origin return";

    }


    @Test
    public void test2() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject("test");
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
            ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
            try {
                System.out.println(objectInputStream.readObject());
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void test3(int a) {
        System.out.println(a);
    }

    public void proxy(HttpServletRequest request) {
        HttpServletRequest proxyRequest = (HttpServletRequest) Proxy.newProxyInstance(this.getClass().getClassLoader(), request.getClass().getInterfaces(), (proxy, method, args) -> {
            Object invoke = method.invoke(request, args);
            if ("getParameter".equals(method.getName())) {
                return "1";
            }
            return invoke;
        });
        String test = request.getParameter("test");
        System.out.println("origin--" + test);
        System.out.println("proxy--" + proxyRequest.getParameter("test"));
    }


}
