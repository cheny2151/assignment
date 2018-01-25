package com.cheny.controller;

import com.cheny.service.AnalystService;
import com.cheny.service.AreaService;
import com.cheny.utils.JdkRedisClientImpl;
import org.junit.Test;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

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
    public Object test(HttpServletRequest request) {

//        Proxy.newProxyInstance(this.getClass().getClassLoader(), request.getClass().getInterfaces(), (proxy, method, args) -> null);
//        test2();
//        return null;
//        areaService.find(1L);
//        System.out.println("---------");
//        analystService.find(1L);
        return null;

    }


    @Test
    public void test2() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject("13132132");
            System.out.println(byteArrayOutputStream.toByteArray().toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void test3(int a) {
        System.out.println(a);
    }


}
