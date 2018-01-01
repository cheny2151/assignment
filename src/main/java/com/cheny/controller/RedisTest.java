package com.cheny.controller;

import com.cheny.entity.Analyst;
import com.cheny.entity.Project;
import com.cheny.entity.SerialNumber;
import com.cheny.entity.SerialNumberVO;
import com.cheny.service.AnalystService;
import com.cheny.service.AreaService;
import com.cheny.service.ProjectService;
import com.cheny.service.SerialNumberService;
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
    @Resource(name = "serialNumberServiceImpl")
    private SerialNumberService serialNumberService;
    @Resource(name = "analystServiceImpl")
    private AnalystService analystService;
    @Resource(name = "projectServiceImpl")
    private ProjectService projectService;

    @RequestMapping("/redis")
    @ResponseBody
    public Object test() {

//        Analyst analyst = analystService.find(1L);
//        Project project = projectService.find(1L);

//        SerialNumber serialNumber = new SerialNumber();
//        serialNumber.set
//        serialNumberService.persist();

        SerialNumberVO inChildTable = serialNumberService.findInChildTable(7L);

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
