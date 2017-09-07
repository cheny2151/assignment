package com.cheny.entity;

import javax.persistence.*;
import java.util.List;

/**
 * 流水号
 * Created by cheny on 2017/7/23.
 */
@Entity
@Table
public class SerialNumber extends BaseEntity{

    private static final long serialVersionUID = -4542666765989458491L;

    private Integer number;

    private List<Analyst> analysts;

    private List<Project> projects;

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    @JoinTable(name = "analyst_serialNumber")
    @ManyToMany(fetch = FetchType.LAZY)
    public List<Analyst> getAnalysts() {
        return analysts;
    }

    public void setAnalysts(List<Analyst> analysts) {
        this.analysts = analysts;
    }

    @JoinTable(name = "project_serialNumber")
    @ManyToMany(fetch = FetchType.LAZY)
    public List<Project> getProjects() {
        return projects;
    }

    public void setProjects(List<Project> projects) {
        this.projects = projects;
    }
}