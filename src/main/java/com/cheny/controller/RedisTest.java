package com.cheny.controller;

import com.cheny.service.AreaService;
import com.cheny.system.page.Page;
import com.cheny.utils.JdkRedisClientImpl;
import org.junit.Test;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

/**
 * Created by cheny on 2017/12/3.
 */
@Controller
public class RedisTest {

    @Resource(name = "jdkRedisClient")
    private JdkRedisClientImpl<Page> redisClient;
    @Resource(name = "areaServiceImpl")
    private AreaService areaService;

    @RequestMapping("/redis")
    @ResponseBody
    public Object test() {

        areaService.test();

        return "success";

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
}
