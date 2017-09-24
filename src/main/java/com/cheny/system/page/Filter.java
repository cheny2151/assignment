package com.cheny.system.page;

/**
 * 分页筛选类
 * Created by cheny on 2017/9/24.
 */
public class Filter {

    private enum Operator {

        equal,

        notEqual,

        greaterThan,

        greaterThanOrEqualTo,

        lessThan,

        lessThanOrEqualTo,

        in,

        like,

        notLike,

        between,

    }

    /**
     * 运算符
     */
    private Operator operator;

    /**
     * 属性
     */
    private String property;

    /**
     * 值
     */
    private String value1;

    private String value2;

    /**
     * 是否忽略大小写，默认false
     */
    private boolean isIgnoreCase = false;

    public Filter(Operator operator, String property, String value, boolean isIgnoreCase) {
        this.operator = operator;
        this.property = property;
        this.value1 = value;
        this.isIgnoreCase = isIgnoreCase;
    }

    public Filter(Operator operator, String property, String value) {
        this.operator = operator;
        this.property = property;
        this.value1 = value;
    }

    public static Filter eq(String property, String value) {
        return new Filter(Operator.equal, property, value);
    }

    public static Filter neq(String property, String value) {
        return new Filter(Operator.notEqual, property, value);
    }

    public static Filter gt(String property, String value) {
        return new Filter(Operator.greaterThan, property, value);
    }

    public static Filter ge(String property, String value) {
        return new Filter(Operator.greaterThanOrEqualTo, property, value);
    }

    public static Filter lt(String property, String value) {
        return new Filter(Operator.lessThan, property, value);
    }

    public static Filter le(String property, String value) {
        return new Filter(Operator.lessThanOrEqualTo, property, value);
    }

    public static Filter in(String property, String value) {
        return new Filter(Operator.in, property, value);
    }

    public static Filter like(String property, String value) {
        return new Filter(Operator.like, property, value);
    }

    public static Filter notLike(String property, String value) {
        return new Filter(Operator.notLike, property, value);
    }

    public static Filter between(String property, String value1, String value2) {
        Filter filter = new Filter(Operator.between, property, value1);
        filter.setValue2(value2);
        return filter;
    }

    public Operator getOperator() {
        return operator;
    }

    public void setOperator(Operator operator) {
        this.operator = operator;
    }

    public String getProperty() {
        return property;
    }

    public void setProperty(String property) {
        this.property = property;
    }

    public String getValue1() {
        return value1;
    }

    public void setValue1(String value) {
        this.value1 = value;
    }

    public String getValue2() {
        return value2;
    }

    public void setValue2(String value2) {
        this.value2 = value2;
    }

    public boolean isIgnoreCase() {
        return isIgnoreCase;
    }

    public void setIgnoreCase(boolean ignoreCase) {
        isIgnoreCase = ignoreCase;
    }
}
