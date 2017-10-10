package com.cheny.dao;

import com.cheny.system.page.Filter;

import java.util.List;

/**
 * Created by cheny on 2017/8/6.
 */
public interface BaseDao<T> {

    void persist(T entity);

    T merge(T entity);

    void remove(T entity);

    T find(Long id);

    List<T> findAll();

    List<T> findByIds(List<Long> ids);

    void flush();

    List<T> findList(List<Filter> filters);

    Long getIdentifier(T entity);

    boolean contains(T entity);

    /**
     * 重构：多态代替条件
     */
    List<T> findListPolymorphism(List<com.cheny.system.FilterPolymorphism.Filter<T>> filters);

}
