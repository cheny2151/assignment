package com.cheny.system.FilterPolymorphism;

import org.springframework.cache.annotation.Cacheable;
import org.springframework.util.Assert;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Path;
import javax.persistence.criteria.Root;
import java.util.Set;

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

    abstract void addRestrictions(CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder);

    @Cacheable(value = "myCache", key = "#root.methodName+#javaType")
    public Root<T> getRoot(CriteriaQuery<?> criteriaQuery, Class<T> javaType) {
        Assert.notNull(javaType, "Must Not Null");

        Set<Root<?>> roots = criteriaQuery.getRoots();
        for (Root<?> root : roots) {
            if (javaType.equals(root.getJavaType())) {
                return (Root<T>) root.as(javaType);
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
        String[] propertySplit = property.split(".");
        Path<?> path = root.get(propertySplit[0]);
        for (int i = 1; i < propertySplit.length; i++) {
            path = path.get(propertySplit[i]);
        }
        return path;
    }

}
