package com.cheny.dao;

import com.cheny.system.page.Filter;

import javax.persistence.criteria.CriteriaQuery;
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

    List<T> findList(CriteriaQuery<T> criteriaQuery, List<Filter> filters);

    /**
     * 重构：多态代替条件
     */
    List<T> findListPolymorphism(List<com.cheny.system.FilterPolymorphism.Filter<T>> filters);

    List<T> findListPolymorphism(CriteriaQuery<T> criteriaQuery, List<com.cheny.system.FilterPolymorphism.Filter<T>> filters);
}
