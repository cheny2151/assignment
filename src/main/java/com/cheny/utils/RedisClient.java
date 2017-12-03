package com.cheny.utils;

import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * Created by cheny on 2017/12/3.
 */
@Component("redisClient")
public class RedisClient {

    @Resource(name = "jsonRedisSerializerTemplate")
    private RedisTemplate<String, Object> jsonRedisTemplate;
    @Resource(name = "stringRedisSerializerTemplate")
    private RedisTemplate<String, String> stringRedisTemplate;

    public void setJsonValue(String K, Object V, Long I) {
        jsonRedisTemplate.opsForValue().set(K, V, I);
    }


}
