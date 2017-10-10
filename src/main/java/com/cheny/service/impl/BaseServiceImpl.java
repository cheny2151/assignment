package com.cheny.service.impl;

import com.cheny.dao.BaseDao;
import com.cheny.service.BaseService;
import com.cheny.system.page.Filter;
import org.springframework.beans.BeanUtils;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import java.beans.PropertyDescriptor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
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
    public T merge(T entity) {
        return baseDao.merge(entity);
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
    @Transactional(readOnly = true)
    public List<T> findByIds(List<Long> ids) {
        return baseDao.findByIds(ids);
    }

    @Override
    public void flush() {
        baseDao.flush();
    }

    @Override
    @Transactional(readOnly = true)
    public List<T> findList(List<Filter> filters) {
        return baseDao.findList(filters);
    }

    @Override
    @Transactional(readOnly = true)
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

    @Override
    public T updateOnlyThisProperties(T entity, String... properties) {
        Assert.notNull(entity, "Must Not Null");

        if (baseDao.contains(entity)) {
            throw new IllegalArgumentException("Entity be contains");
        }
        T origin = baseDao.find(baseDao.getIdentifier(entity));
        if (origin != null) {
            copyUpdateProperties(origin, entity, properties);
            return baseDao.merge(origin);
        }
        return null;
    }

    private void copyUpdateProperties(T origin, T target, String[] properties) {
        Assert.notNull(origin, "Must Not Null");
        Assert.notNull(target, "Must Not Null");

        for (String property : properties) {
            PropertyDescriptor descriptor = BeanUtils.getPropertyDescriptor(origin.getClass(), property);
            Method readMethod = descriptor.getReadMethod();
            Method writeMethod = descriptor.getWriteMethod();
            if (readMethod != null && writeMethod != null) {
                if (!Modifier.isPublic(readMethod.getModifiers())) {
                    readMethod.setAccessible(true);
                }
                if (!Modifier.isPublic(writeMethod.getModifiers())) {
                    writeMethod.setAccessible(true);
                }
                try {
                    Object beCopyValue = readMethod.invoke(target);
                    writeMethod.invoke(origin, beCopyValue);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

}
