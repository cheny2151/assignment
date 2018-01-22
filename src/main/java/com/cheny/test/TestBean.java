package com.cheny.test;

import java.util.Arrays;

public class TestBean {

    private String name;

    private String[] names;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String[] getNames() {
        return names;
    }

    public void setNames(String... names) {
        this.names = names;
    }

    @Override
    public String toString() {
        return "TestBean{" +
                "name='" + name + '\'' +
                ", names=" + Arrays.toString(names) +
                '}';
    }
}
