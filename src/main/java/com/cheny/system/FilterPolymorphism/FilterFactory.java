package com.cheny.system.FilterPolymorphism;

public class FilterFactory {

    public enum Operator {

        eq,

        ne,

        gt,

        lt,

        ge,

        le,

        like,

        noLike,

        in,

        isNull,

        isNotNull

    }

    public static <T> Filter<T> create(Operator operator, String property, Object value, Class<T> javaType) {

        switch (operator) {
            case eq: {
                return new EqualFilter<>(property, value, false, javaType);
            }
            case ne: {
                return new NotEqualFilter<>(property, value, false, javaType);
            }
            case gt: {
                return new GreaterThanFilter<>(property, value, false, javaType);
            }
            case ge: {
                return new GreaterThanOrEqualFilter<>(property, value, false, javaType);
            }
            case lt: {
                return new LessThanFilter<>(property, value, false, javaType);
            }
            case le: {
                return new LessThanOrEqualFilter<>(property, value, false, javaType);
            }
            case in: {
                return new InFilter<>(property, value, false, javaType);
            }
            case like: {
                return new LikeFilter<>(property, value, false, javaType);
            }
            case noLike: {
                return new NotLikeFilter<>(property, value, false, javaType);
            }
            case isNull: {
                return new NullFilter<>(property, value, false, javaType);
            }
            case isNotNull: {
                return new NotNullFilter<>(property, value, false, javaType);
            }
            default:
                throw new RuntimeException("no this operator");
        }

    }

    public static <T> Filter<T> createIgnoreCase(Operator operator, String property, Object value, Class<T> javaType) {

        switch (operator) {
            case eq: {
                return new EqualFilter<>(property, value, true, javaType);
            }
            case ne: {
                return new NotEqualFilter<>(property, value, true, javaType);
            }
            case like: {
                return new LikeFilter<>(property, value, true, javaType);
            }
            case noLike: {
                return new NotLikeFilter<>(property, value, true, javaType);
            }
            default:
                throw new RuntimeException("no this operator");
        }

    }

}
