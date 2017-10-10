package com.cheny.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * 分析员
 * Created by cheny on 2017/7/23.
 */
@Entity
@Table
public class Analyst extends BaseEntity {

    private static final long serialVersionUID = 9148588020369437062L;

    /**
     * 工号
     */
    private String Number;

    /**
     * 项目
     */
    private List<Project> projects = new ArrayList<>();

    /**
     * 流水号
     */
    private List<SerialNumber> serialNumbers = new ArrayList<>();


    @JoinTable(name = "analyst_project")
    @ManyToMany(cascade = CascadeType.MERGE, fetch = FetchType.LAZY)
    public List<Project> getProjects() {
        return projects;
    }

    public void setProjects(List<Project> projects) {
        this.projects = projects;
    }

    @ManyToMany(mappedBy = "analysts", cascade = CascadeType.MERGE, fetch = FetchType.LAZY)
    public List<SerialNumber> getSerialNumbers() {
        return serialNumbers;
    }

    public void setSerialNumbers(List<SerialNumber> serialNumbers) {
        this.serialNumbers = serialNumbers;
    }

    public String getNumber() {
        return Number;
    }

    public void setNumber(String number) {
        Number = number;
    }

}
