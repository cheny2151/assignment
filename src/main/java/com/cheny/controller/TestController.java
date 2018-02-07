package com.cheny.controller;

import com.cheny.service.AnalystService;
import com.cheny.service.AreaService;
import com.cheny.task.TaskModel;
import com.cheny.utils.JdkRedisClientImpl;
import org.junit.Test;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
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
    @Resource(name = "taskModel")
    private TaskModel taskModel;

    @RequestMapping("/test")
    @ResponseBody
    public String test(String reParam) {

//        test2();
//        return null;
//        areaService.find(1L);
        System.out.println("reParam" + reParam);
//        analystService.find(1L);
        taskModel.taskExecute();
        return "origin return";

    }

    /**
     * controller统一异常处理测试
     *
     * @return
     */
    @RequestMapping("/exception")
    @ResponseBody
    public String exception() {
        throw new IllegalArgumentException();
//        return "success";
    }

    /**
     * 重定向URL传数据测试
     *
     * @param model
     * @return
     */
    @RequestMapping("/redirect")
    public String redirect(Model model) {
        model.addAttribute("reParam", "success");
        model.addAttribute("a", "test");
        return "redirect:/{a}";
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

    /**
     * jdk动态代理
     *
     * @param request
     */
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
