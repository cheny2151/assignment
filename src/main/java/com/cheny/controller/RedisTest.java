package com.cheny.controller;

import com.cheny.entity.Area;
import com.cheny.service.AreaService;
import com.cheny.system.page.Page;
import com.cheny.system.page.Pageable;
import com.cheny.utils.JdkRedisClientImpl;
import com.cheny.utils.JsonMessage;
import org.junit.Test;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.List;

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

        List<Area> areas = null;
//                = areaService.getAreaTree(Area.Grade.district);


        Page<Object> objectPage = new Page<>(new Pageable<>());


        try {
            redisClient.setValue("test", objectPage,10);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return JsonMessage.success();

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
