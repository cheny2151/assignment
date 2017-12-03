package com.cheny.entity;


import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by cheny on 2017/12/3.
 */
@Entity
@Table(name = "xx_area")
public class Area extends BaseEntity {


    private static final long serialVersionUID = -2158109459123036967L;

    /**
     * 树路径分隔符
     */
    private static final String TREE_PATH_SEPARATOR = ",";

    /**
     * 名称
     */
    private String name;

    /**
     * 全称
     */
    private String fullName;

    /**
     * 树路径
     */
    private String treePath;

    /**
     * 上级地区
     */
    private Area parent;

    /**
     * 下级地区
     */
    private Set<Area> children = new HashSet<Area>();

    public enum Grade {

        //省
        province,

        //市
        city,

        //区
        district

    }

    /**
     * 区域级别
     */
    private Grade grade;

    /**
     * 获取名称
     *
     * @return 名称
     */
    @Column(nullable = false, length = 100)
    @JsonProperty
    public String getName() {
        return name;
    }

    /**
     * 设置名称
     *
     * @param name 名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取全称
     *
     * @return 全称
     */
    @Column(nullable = false, length = 500)
    @JsonProperty
    public String getFullName() {
        return fullName;
    }

    /**
     * 设置全称
     *
     * @param fullName 全称
     */
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    /**
     * 获取树路径
     *
     * @return 树路径
     */
    @Column(nullable = false, updatable = false)
    @JsonProperty
    public String getTreePath() {
        return treePath;
    }

    /**
     * 设置树路径
     *
     * @param treePath 树路径
     */
    public void setTreePath(String treePath) {
        this.treePath = treePath;
    }

    /**
     * 获取上级地区
     *
     * @return 上级地区
     */
    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY)
    public Area getParent() {
        return parent;
    }

    /**
     * 设置上级地区
     *
     * @param parent 上级地区
     */
    public void setParent(Area parent) {
        this.parent = parent;
    }

    /**
     * 获取下级地区
     * 取消懒加载 缓存用
     *
     * @return 下级地区
     */
    @JsonProperty
    @OneToMany(mappedBy = "parent", fetch = FetchType.EAGER, cascade = CascadeType.REMOVE)
    public Set<Area> getChildren() {
        return children;
    }

    /**
     * 设置下级地区
     *
     * @param children 下级地区
     */
    public void setChildren(Set<Area> children) {
        this.children = children;
    }


    public Grade getGrade() {
        return grade;
    }

    public void setGrade(Grade grade) {
        this.grade = grade;
    }


}
