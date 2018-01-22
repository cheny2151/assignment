package com.cheny.utils;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by cheny on 2017/12/14.
 */
public interface RedisClient<V> {

    void setValue(String k, V v, int days);

    void setValue(String k, V v);

    V getValue(String k);

    boolean containsKey(String k);

    void removeCache(String k);

    void addList(String k, List<V> values);

    List<V> getList(String k);

    void HMSet(String k, Map<String, V> kv, int days);

    void HMSet(String k, Map<String, V> kv);

    void HSet(String k, String hk, V v);

    V HGet(String k, String hk);

    boolean HExists(String k, String hk);

    Map<String, V> HMGet(String k);

    Set<String> HKeys(String k);

    List<V> HValues(String k);

    void HDel(String k, String hk);

    void delete(String k);

}
