package com.cheny.service.impl;

import com.cheny.dao.BaseDao;
import com.cheny.service.BaseService;
import com.cheny.system.page.Filter;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.List;

/**
 * Created by cheny on 2017/8/6.
 */
@Transactional
public class BaseServiceImpl<T> implements BaseService<T> {

    private BaseDao<T> baseDao;

    public void setBaseDao(BaseDao<T> baseDao) {
        this.baseDao = baseDao;
    }

    @Override
    public void persist(T entity) {
        baseDao.persist(entity);
    }

    @Override
    public void merge(T entity) {
        baseDao.merge(entity);
    }

    @Override
    public void remove(T entity) {
        baseDao.remove(entity);
    }

    @Override
    public void remove(Long id) {
        T entity = baseDao.find(id);
        baseDao.remove(entity);
    }

    @Override
    public void remove(Long[] ids) {
        if (ids != null) {
            for (Long id : ids) {
                this.remove(id);
            }
        }
    }

    @Override
    @Transactional(readOnly = true)
    public List<T> findByIds(Long[] ids) {
        return baseDao.findByIds(Arrays.asList(ids));
    }

    @Override
    public List<T> findByIds(List<Long> ids) {
        return baseDao.findByIds(ids);
    }

    @Override
    public void flush() {
        baseDao.flush();
    }

    @Override
    public List<T> findList(List<Filter> filters) {
        return baseDao.findList(filters);
    }

    @Override
    public List<T> findListPolymorphism(List<com.cheny.system.FilterPolymorphism.Filter<T>> filters) {
        return baseDao.findListPolymorphism(filters);
    }

    @Override
    @Transactional(readOnly = true)
    public T find(Long id) {
        return baseDao.find(id);
    }

    @Override
    @Transactional(readOnly = true)
    public List<T> findAll() {
        return baseDao.findAll();
    }

}
