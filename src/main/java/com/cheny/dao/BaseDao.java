package com.cheny.dao;

/**
 * Created by cheny on 2017/8/6.
 */
public interface BaseDao<T> {

    void persist(T entity);

    void merge(T entity);

    void remove(T entity);

    T find(Long id);

}
