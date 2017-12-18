package com.cheny.utils;

import org.apache.log4j.Logger;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Component;
import redis.clients.jedis.exceptions.JedisException;

import javax.annotation.Resource;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * Created by cheny on 2017/12/3.
 */
@Component("jdkRedisClient")
public class JdkRedisClientImpl<V> implements RedisClient<V> {

    @Resource(name = "jdkRedisSerializerTemplate")
    private RedisTemplate<String, V> jdkRedisTemplate;

    private final Logger logger = Logger.getLogger(this.getClass());

    @Override
    public void setValue(String k, V v, int days) {
        try {
            ValueOperations<String, V> vopForValue = jdkRedisTemplate.opsForValue();
            if (days > 0) {
                vopForValue.set(k, v, days, TimeUnit.DAYS);
            } else {
                vopForValue.set(k, v);
            }
        } catch (JedisException e) {
            logger.error("=====redis 缓存失败===== key:" + k + "\t错误信息 :" + e.getMessage());
            throw e;
        }
        /*  自己实现的方法
        jdkRedisTemplate.execute((RedisCallback<V>) redisConnection -> {
           try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                objectOutputStream.writeObject(v);
                redisConnection.set(k.getBytes(), byteArrayOutputStream.toByteArray());
//                redisConnection.setRange(k.getBytes(), byteArrayOutputStream.toByteArray(), -1);  setRange 是错误的 原因:
            } catch (IOException e) {
                e.printStackTrace();
            }
            return null;
        });
        */
    }

    @Override
    public void setValue(String k, V v) {
        setValue(k, v, -1);
    }

    @Override
    public V getValue(String k) {
        if (k != null) {
            try {
                return jdkRedisTemplate.opsForValue().get(k);
            } catch (JedisException e) {
                logger.error("=====redis 获取缓存失败===== key:" + k + "\t错误信息 :" + e.getMessage());
                throw e;
            }
        }
        return null;
    }

    public void addList(String k, List<V> values) {
        try {
            jdkRedisTemplate.opsForList().rightPushAll(k, (V[]) values.toArray());
        } catch (JedisException e) {
            logger.error("=====redis 获取缓存失败===== key:" + k + "\t错误信息 :" + e.getMessage());
            throw e;
        }
    }

    public List<V> getList(String k) {
        try {
            return jdkRedisTemplate.opsForList().range(k, 0, size(k) - 1);
        } catch (JedisException e) {
            logger.error("=====redis 获取List缓存失败===== key:" + k + "\t错误信息 :" + e.getMessage());
            throw e;
        }
    }

    private long size(String k) {
        try {
            return jdkRedisTemplate.opsForList().size(k);
        } catch (JedisException e) {
            logger.error("=====redis 获取List缓存长度失败===== key:" + k + "\t错误信息 :" + e.getMessage());
            throw e;
        }
    }

    @Override
    public boolean containsKey(String k) {
        try {
            return jdkRedisTemplate.hasKey(k);
        } catch (JedisException e) {
            logger.error("=====redis 判断缓存是否存在失败===== key:" + k + "\t错误信息 :" + e.getMessage());
            throw e;
        }
    }

    @Override
    public void removeCache(String k) {
        try {
            jdkRedisTemplate.delete(k);
        } catch (JedisException e) {
            logger.error("=====redis 删除缓存失败===== key:" + k + "\t错误信息 :" + e.getMessage());
            throw e;
        }
    }


}
