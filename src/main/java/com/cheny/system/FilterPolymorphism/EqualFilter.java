package com.cheny.system.FilterPolymorphism;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Path;
import javax.persistence.criteria.Predicate;

public class EqualFilter<T> extends Filter<T> {


    EqualFilter(String property, Object value, boolean ignoreCase, Class<T> javaType) {
        super(property, value, ignoreCase, javaType);
    }

    @SuppressWarnings("unchecked")
    @Override
    void addRestrictions(CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
        Predicate restriction = criteriaQuery.getRestriction() != null ? criteriaQuery.getRestriction() : criteriaBuilder.conjunction();
        if (ignoreCase && value instanceof String && javaType.isAssignableFrom(String.class)) {
            restriction = criteriaBuilder.and(restriction, criteriaBuilder.equal(criteriaBuilder.lower((Path<String>) getPath(criteriaQuery)), ((String) value).toLowerCase()));
        } else {
            restriction = criteriaBuilder.and(restriction, criteriaBuilder.equal(getPath(criteriaQuery), value));
        }
        criteriaQuery.where(restriction);
    }


}
