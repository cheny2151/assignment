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

    /**
     * 流水号
     */
    private Integer number;

    /**
     * 分析员
     */
    private List<Analyst> analysts = new ArrayList<>();

    /**
     * 项目
     */
    private List<Project> projects = new ArrayList<>();

    /**
     * 所属任务单
     */
    private Assignment assignment;

    /**
     * 存放关联项目id
     */
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

    @ManyToOne
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


    @PreRemove
    public void preRemove() {
        this.setProjects(null);
        this.setAssignment(null);
        this.setAnalysts(null);
    }


}
