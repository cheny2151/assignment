package com.cheny.dao;

import java.util.List;

/**
 * Created by cheny on 2017/8/6.
 */
public interface BaseDao<T> {

    void persist(T entity);

    void merge(T entity);

    void remove(T entity);

    T find(Long id);

    List<T> findAll();

    List<T> findByIds(List<Long> ids);

    void flush();

}
