package com.cheny.controller;

import com.cheny.entity.Area;
import com.cheny.service.AreaService;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.io.ByteArrayInputStream;
import java.io.ObjectInputStream;
import java.util.List;

/**
 * Created by cheny on 2017/12/3.
 */
@Controller
public class RedisTest {

    @Resource(name = "jsonRedisSerializerTemplate")
    private RedisTemplate<String, Object> jsonRedisTemplate;
    @Resource(name = "stringRedisSerializerTemplate")
    private RedisTemplate<String, String> stringRedisTemplate;
    @Resource(name = "areaServiceImpl")
    private AreaService areaService;
    @Resource(name = "jdkRedisSerializerTemplate")
    private RedisTemplate<String, byte[]> redisTemplate;

    @RequestMapping("/redis")
    @ResponseBody
    public List<Area> test() {
        byte[] test3s = redisTemplate.opsForValue().get("test3");
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(test3s);
            ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
            return (List<Area>) objectInputStream.readObject();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
