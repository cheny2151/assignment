package com.cheny.utils;

import org.apache.log4j.Logger;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;
import redis.clients.jedis.exceptions.JedisException;

import javax.annotation.Resource;
import java.util.concurrent.TimeUnit;

/**
 * Created by cheny on 2017/12/14.
 */
@Component("strRedisClientImpl")
public abstract class StrRedisClientImpl implements RedisClient<String> {

    @Resource(name = "stringRedisSerializerTemplate")
    private RedisTemplate<String, String> strRedisTemplate;

    private final Logger logger = Logger.getLogger(this.getClass());

    @Override
    public void setValue(String k, String v, int days) {
        try {
            strRedisTemplate.opsForValue().set(k, v, days, TimeUnit.DAYS);
        } catch (JedisException e) {
            logger.info("=====redis 缓存失败===== key:" + k + "\t错误信息 :" + e.getMessage());
            throw e;
        }
    }

    @Override
    public void setValue(String k, String v) {
        setValue(k, v, -1);
    }

    @Override
    public String getValue(String k) {
        if (k != null) {
            try {
                return strRedisTemplate.opsForValue().get(k);
            } catch (JedisException e) {
                logger.info("=====redis 获取缓存失败===== key:" + k + "\t错误信息 :" + e.getMessage());
                throw e;
            }
        }
        return null;
    }

    @Override
    public boolean containsKey(String k) {
        try {
            return strRedisTemplate.hasKey(k);
        } catch (JedisException e) {
            logger.info("=====redis 判断缓存是否存在失败===== key:" + k + "\t错误信息 :" + e.getMessage());
            throw e;
        }
    }

    @Override
    public void removeCache(String k) {
        try {
            strRedisTemplate.delete(k);
        } catch (JedisException e) {
            logger.info("=====redis 删除缓存失败===== key:" + k + "\t错误信息 :" + e.getMessage());
            throw e;
        }
    }

}
