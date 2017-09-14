package com.cheny.service.impl;

import com.cheny.dao.BaseDao;
import com.cheny.service.BaseService;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.transaction.annotation.Transactional;

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
    @Cacheable(value = "myCache")
    @Transactional(readOnly = true)
    public T find(Long id) {
        System.out.println("real running");
        return baseDao.find(id);
    }

    @Override
    public List<T> findList() {
        return baseDao.findList();
    }

}
