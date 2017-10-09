package com.cheny.system.FilterPolymorphism;

import com.cheny.system.SpringUtils;
import org.springframework.cache.Cache;
import org.springframework.cache.CacheManager;
import org.springframework.util.Assert;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Path;
import javax.persistence.criteria.Root;
import java.util.Set;

/**
 * 重构:多态代替条件
 *
 * @param <T> 实体类型
 */
public abstract class Filter<T> {

    protected Class<T> javaType;

    protected Object value;

    protected String property;

    protected Boolean ignoreCase;

    Filter(String property, Object value, boolean ignoreCase, Class<T> javaType) {
        this.property = property;
        this.value = value;
        this.javaType = javaType;
        this.ignoreCase = ignoreCase;
    }

    public abstract void addRestrictions(CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder);

    @SuppressWarnings("unchecked")
    private Root<T> getRoot(CriteriaQuery<?> criteriaQuery, Class<T> javaType) {
        Assert.notNull(javaType, "Must Not Null");

        CacheManager cacheManager = (CacheManager) SpringUtils.getBean("cacheManager");
        Cache rootCache = cacheManager.getCache("rootCache");


        if (rootCache.get("getRoot_" + javaType) != null) {
            return (Root<T>) rootCache.get("getRoot_" + javaType).get();
        }

        Set<Root<?>> roots = criteriaQuery.getRoots();
        for (Root<?> root : roots) {
            if (javaType.equals(root.getJavaType())) {
                Root<T> result = (Root<T>) root.as(javaType);
                rootCache.put("getRoot_" + javaType, result);
                return result;
            }
        }
        return null;
    }

    protected Path<?> getPath(CriteriaQuery criteriaQuery) {
        Assert.notNull(property, "Must Not Null");

        Root<T> root = getRoot(criteriaQuery, javaType);
        if (root == null) {
            return null;
        }
        String[] propertySplit = property.split("\\.");
        Path<?> path = root.get(propertySplit[0]);
        for (int i = 1; i < propertySplit.length; i++) {
            path = path.get(propertySplit[i]);
        }
        return path;
    }

}
