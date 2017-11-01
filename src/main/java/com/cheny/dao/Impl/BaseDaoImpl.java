package com.cheny.dao.Impl;

import com.cheny.dao.BaseDao;
import com.cheny.system.page.Filter;
import org.apache.commons.lang.StringUtils;
import org.springframework.util.Assert;

import javax.persistence.EntityManager;
import javax.persistence.FlushModeType;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.*;
import java.lang.reflect.ParameterizedType;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * Created by cheny on 2017/8/6.
 */
public class BaseDaoImpl<T> implements BaseDao<T> {

    @PersistenceContext
    protected EntityManager entityManager;

    private Class<T> clazz;

    @SuppressWarnings("unchecked")
    public BaseDaoImpl() {
        ParameterizedType type = (ParameterizedType) this.getClass().getGenericSuperclass();
        clazz = (Class<T>) type.getActualTypeArguments()[0];
    }

    @Override
    public void persist(T entity) {
        entityManager.persist(entity);
    }

    @Override
    public T merge(T entity) {
        return entityManager.merge(entity);
    }

    @Override
    public void remove(T entity) {
        entityManager.remove(entity);
    }

    @Override
    public T find(Long id) {
        return entityManager.find(clazz, id);
    }

    @Override
    public List<T> findAll() {
        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        CriteriaQuery<T> criteriaQuery = criteriaBuilder.createQuery(clazz);
        Root<T> root = criteriaQuery.from(clazz);
        criteriaQuery.select(root);
        return entityManager.createQuery(criteriaQuery).setFlushMode(FlushModeType.COMMIT).getResultList();
    }

    @Override
    public List<T> findByIds(List<Long> ids) {
        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        CriteriaQuery<T> query = criteriaBuilder.createQuery(clazz);
        Root<T> root = query.from(clazz);
        query.select(root).where(criteriaBuilder.in(root.get("id")).value(ids));
        return entityManager.createQuery(query).setFlushMode(FlushModeType.COMMIT).getResultList();
    }

    @Override
    public void flush() {
        entityManager.flush();
    }

    @Override
    public List<T> findList(List<Filter> filters) {
        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        CriteriaQuery<T> criteriaQuery = criteriaBuilder.createQuery(clazz);
        Root<T> root = criteriaQuery.from(clazz);
        criteriaQuery.select(root);
        return this.findList(criteriaQuery, filters);
    }

    /**
     * 中间层(protect 不开放给service层)
     *
     * @param criteriaQuery 已经组装好select,from和部分where的criteriaQuery
     */
    protected List<T> findList(CriteriaQuery<T> criteriaQuery, List<Filter> filters) {
        addRestriction(criteriaQuery, filters);
        return entityManager.createQuery(criteriaQuery).setFlushMode(FlushModeType.COMMIT).getResultList();
    }

    @Override
    public Long getIdentifier(T entity) {
        Assert.notNull(entity, "Must Not Null");
        return (Long) entityManager.getEntityManagerFactory().getPersistenceUnitUtil().getIdentifier(entity);
    }

    @Override
    public boolean contains(T entity) {
        return entityManager.contains(entity);
    }

    @Override
    public List<T> findListPolymorphism(List<com.cheny.system.FilterPolymorphism.Filter<T>> filters) {
        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        CriteriaQuery<T> criteriaQuery = criteriaBuilder.createQuery(clazz);
        criteriaQuery.from(clazz);
        return findListPolymorphism(criteriaQuery, filters);
    }

    /**
     * @param criteriaQuery 已经组装好select,from和部分where的criteriaQuery
     */
    @SuppressWarnings("unchecked")
    protected List<T> findListPolymorphism(CriteriaQuery<T> criteriaQuery, List<com.cheny.system.FilterPolymorphism.Filter<T>> filters) {
        if (filters == null || filters.isEmpty()) {
            return findAll();
        }

        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        for (com.cheny.system.FilterPolymorphism.Filter filter : filters) {
            filter.addRestrictions(criteriaQuery, criteriaBuilder);
        }
        return entityManager.createQuery(criteriaQuery).setFlushMode(FlushModeType.COMMIT).getResultList();
    }

    /**
     * <?>:可接收任何result type的criteriaQuery( criteriaBuilder.createQuery(T)-> result type为T );
     * 而且 criteriaQuery.select(Selection<? extends T> selection) select的参数应该是或者继承于 result type
     */
    private void addRestriction(CriteriaQuery<?> criteriaQuery, List<Filter> filters) {
        Assert.notNull(criteriaQuery, "must not null");

        Root<T> root = getRoot(criteriaQuery);
        if (filters == null || filters.isEmpty() || root == null) {
            return;
        }
        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        Predicate restriction = criteriaQuery.getRestriction() != null ? criteriaQuery.getRestriction() : criteriaBuilder.conjunction();
        restriction = getRestriction(restriction, filters, root, criteriaBuilder);
        criteriaQuery.where(restriction);
    }

    /**
     * 从filters中取出Predicate
     */
    @SuppressWarnings("unchecked")
    private Predicate getRestriction(Predicate restriction, List<Filter> filters, Root<T> root, CriteriaBuilder criteriaBuilder) {
        Assert.notNull(restriction, "must not null");
        Assert.notNull(root, "must not null");
        Assert.notNull(criteriaBuilder, "must not null");

        if (filters != null && !filters.isEmpty()) {
            for (Filter filter : filters) {
                Filter.Operator operator = filter.getOperator();
                String property = filter.getProperty();
                boolean isIgnoreCase = filter.getIsIgnoreCase();
                Object value = filter.getValue();
                if (StringUtils.isEmpty(property)) {
                    continue;
                }
                Path path = getPath(root, property);
                switch (operator) {

                    case equal:
                        if (value != null) {
                            if (isIgnoreCase && value instanceof String && String.class.isAssignableFrom(path.getJavaType())) {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.equal(criteriaBuilder.lower((Path<String>) path), ((String) value).toLowerCase()));
                            } else {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.equal(path, value));
                            }
                        }
                        break;

                    case notEqual:
                        if (value != null) {
                            if (isIgnoreCase && value instanceof String && String.class.isAssignableFrom(path.getJavaType())) {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.notEqual(criteriaBuilder.lower((Path<String>) path), ((String) value).toLowerCase()));
                            } else {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.notEqual(path, value));
                            }
                        }
                        break;

                    case gt:
                        if (value != null) {
                            if (value instanceof Number && Number.class.isAssignableFrom(path.getJavaType())) {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.gt((Path<Number>) path, (Number) value));
                            } else if (value instanceof Date && Date.class.isAssignableFrom(path.getJavaType())) {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.greaterThan((Path<Date>) path, (Date) value));
                            }
                        }
                        break;

                    case ge:
                        if (value != null) {
                            if (value instanceof Number && Number.class.isAssignableFrom(path.getJavaType())) {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.ge((Path<Number>) path, (Number) value));
                            } else if (value instanceof Date && Date.class.isAssignableFrom(path.getJavaType())) {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.greaterThanOrEqualTo((Path<Date>) path, (Date) value));
                            }
                        }
                        break;

                    case lt:
                        if (value != null) {
                            if (value instanceof Number && Number.class.isAssignableFrom(path.getJavaType())) {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.le((Path<Number>) path, (Number) value));
                            } else if (value instanceof Date && Date.class.isAssignableFrom(path.getJavaType())) {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.lessThan((Path<Date>) path, (Date) value));
                            }
                        }
                        break;

                    case le:
                        if (value != null) {
                            if (value instanceof Number && Number.class.isAssignableFrom(path.getJavaType())) {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.le((Path<Number>) path, (Number) value));
                            } else if (value instanceof Date && Date.class.isAssignableFrom(path.getJavaType())) {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.lessThanOrEqualTo((Path<Date>) path, (Date) value));
                            }
                        }
                        break;

                    case in:
                        if (value != null) {
                            restriction = criteriaBuilder.and(restriction, restriction, path.in(value));
                        }
                        break;

                    case like:
                        if (value != null && value instanceof String && String.class.isAssignableFrom(path.getJavaType())) {
                            if (isIgnoreCase) {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.like(criteriaBuilder.lower((Path<String>) path), "%" + ((String) value).toLowerCase() + "%"));
                            } else {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.like((Path<String>) path, "%" + value + "%"));
                            }
                        }
                        break;

                    case notLike:
                        if (value != null && value instanceof String && String.class.isAssignableFrom(path.getJavaType())) {
                            if (isIgnoreCase) {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.notLike(criteriaBuilder.lower((Path<String>) path), "%" + ((String) value).toLowerCase() + "%"));
                            } else {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.notLike((Path<String>) path, "%" + value + "%"));
                            }
                        }
                        break;

                    case between:
                        if (value != null && value.getClass().isArray()) {
                            Object[] array = (Object[]) value;
                            if (array[0] == null || array[1] == null) {
                                break;
                            }
                            Class<? extends Object[]> aClass = array.getClass();
                            if (Integer.class.isAssignableFrom(aClass)) {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.between((Path<? extends Integer>) path, (Integer) array[0], (Integer) array[1]));
                            } else if (Long.class.isAssignableFrom(aClass)) {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.between((Path<? extends Long>) path, (Long) array[0], (Long) array[1]));
                            } else if (BigDecimal.class.isAssignableFrom(aClass)) {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.between((Path<? extends BigDecimal>) path, (BigDecimal) array[0], (BigDecimal) array[1]));
                            } else if (Date.class.isAssignableFrom(aClass)) {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.between((Path<? extends Date>) path, (Date) array[0], (Date) array[1]));
                            } else if (Double.class.isAssignableFrom(aClass)) {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.between((Path<? extends Double>) path, (Double) array[0], (Double) array[1]));
                            } else if (Float.class.isAssignableFrom(aClass)) {
                                restriction = criteriaBuilder.and(restriction, criteriaBuilder.between((Path<? extends Float>) path, (Float) array[0], (Float) array[1]));
                            }
                        }
                        break;

                    case isNull:
                        restriction = criteriaBuilder.and(restriction, path.isNull());
                        break;

                    case notNull:
                        restriction = criteriaBuilder.and(restriction, path.isNotNull());
                        break;

                }
            }
        }
        return restriction;
    }

    private Path getPath(Root<T> root, String property) {
        String[] properties = property.split("\\.");
        Path<Object> path = root.get(properties[0]);
        for (int i = 1; i < properties.length; i++) {
            path = path.get(properties[i]);
        }
        return path;
    }

    private Root<T> getRoot(CriteriaQuery<?> criteriaQuery) {
        for (Root<?> root : criteriaQuery.getRoots()) {
            if (clazz.equals(root.getJavaType())) {
                return (Root<T>) root.as(clazz);
            }
        }
        return null;
    }

}
