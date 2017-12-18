package com.cheny.utils;

/**
 * Created by cheny on 2017/12/14.
 */
public interface RedisClient<V> {

    void setValue(String k, V v, int days);

    void setValue(String k, V v);

    V getValue(String k);

    boolean containsKey(String k);

    void removeCache(String k);

}
