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

    List<T> findAll();

    void remove(Long id);

    void remove(Long[] ids);

    List<T> findByIds(Long[] ids);

    List<T> findByIds(List<Long> ids);

    void flush();

}
