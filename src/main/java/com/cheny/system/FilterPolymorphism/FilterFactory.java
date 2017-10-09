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

    public static <T> Filter create(Operator operator, String property, Object value, Class<T> javaType) {

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
/*
            case like: {
                return new EqualFilter(property, value);
            }
            case noLike: {
                return new EqualFilter(property, value);
            }
            case isNull: {
                return new EqualFilter(property, value);
            }
            case isNotNull: {
                return new EqualFilter(property, value);
            }*/
            default:
                throw new RuntimeException("no this operator");
        }

    }

    public static <T> Filter createIgnoreCase(Operator operator, String property, Object value, Class<T> javaType) {

        switch (operator) {
            case eq: {
                return new EqualFilter<>(property, value, true, javaType);
            }
            case ne: {
                return new NotEqualFilter<>(property, value, true, javaType);
            }
            /*case like: {
                return new EqualFilter(property, value);
            }
            case noLike: {
                return new EqualFilter(property, value);
            }
            */
            default:
                throw new RuntimeException("no this operator");
        }

    }

}
