package com.cheny.system.FilterPolymorphism;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import java.util.Collection;

public class InFilter<T> extends Filter<T> {

    InFilter(String property, Object value, boolean ignoreCase, Class<T> javaType) {
        super(property, value, ignoreCase, javaType);
    }

    @Override
    public void addRestrictions(CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
        Predicate restriction = criteriaQuery.getRestriction() != null ? criteriaQuery.getRestriction() : criteriaBuilder.conjunction();
        if (value == null) {
            return;
        }
        restriction = criteriaBuilder.and(restriction, getPath(criteriaQuery).in((Collection) value));
        criteriaQuery.where(restriction);
    }
}
