package com.cheny.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * 流水号
 * Created by cheny on 2017/7/23.
 */
@Entity
@Table
public class SerialNumber extends BaseEntity {

    private static final long serialVersionUID = -4542666765989458491L;

    private Integer number;

    private List<Analyst> analysts = new ArrayList<>();

    private List<Project> projects = new ArrayList<>();

    private Assignment assignment;

    private List<Long> projectIds = new ArrayList<>();

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

    @ManyToOne(cascade = CascadeType.MERGE)
    @JoinColumn(name = "assignment")
    public Assignment getAssignment() {
        return assignment;
    }

    public void setAssignment(Assignment assignment) {
        this.assignment = assignment;
    }

    @Transient
    public List<Long> getProjectIds() {
        return projectIds;
    }

    public void setProjectIds(List<Long> projectIds) {
        this.projectIds = projectIds;
    }

    @PrePersist
    public void prePersist() {
        this.setName(this.getAssignment().getName() + "-" + this.getNumber().toString());
    }

}
