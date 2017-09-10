package com.cheny.service;

import java.util.List;

/**
 * Created by cheny on 2017/8/6.
 */
public interface BaseService<T> {

    void persist(T entity);

    void merge(T entity);

    void remove(T entity);

    T find(Long id);

    List<T> findList();

    void remove(Long id);

}
