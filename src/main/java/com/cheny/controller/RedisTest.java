package com.cheny.controller;

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
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/**
 * Created by cheny on 2017/12/3.
 */
@Controller
public class RedisTest {

    @Resource(name = "jdkRedisClient")
    private JdkRedisClientImpl<String> redisClient;
    @Resource(name = "areaServiceImpl")
    private AreaService areaService;
    @Resource(name = "profilesBean")
    private String profiles;

    @RequestMapping("/redis")
    @ResponseBody
    public Object test(HttpServletRequest request) {

//        Proxy.newProxyInstance(this.getClass().getClassLoader(), request.getClass().getInterfaces(), (proxy, method, args) -> null);
//        test2();
//        return null;
        System.out.println(profiles);
        return null;

    }


    @Test
    public void test2() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject("13132132");
            System.out.println(byteArrayOutputStream.toByteArray().toString());
            test3();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void test3() {
        System.out.println("test3");
    }


}
