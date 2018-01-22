package com.cheny.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * Created by cheny on 2017/12/31.
 * 分表子表
 */
public class SerialNumberVO implements Serializable {

    private static final long serialVersionUID = -4152036955887320946L;

    private Long id;

    private Date createDate;

    private Integer number;

    private List<Long> analystIds;

    private List<String> analystName;

    private List<Long> projectIds;

    private List<String> projectName;

    private Long assignmentId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public List<Long> getAnalystIds() {
        return analystIds;
    }

    public void setAnalystIds(List<Long> analystIds) {
        this.analystIds = analystIds;
    }

    public List<String> getAnalystName() {
        return analystName;
    }

    public void setAnalystName(List<String> analystName) {
        this.analystName = analystName;
    }

    public List<Long> getProjectIds() {
        return projectIds;
    }

    public void setProjectIds(List<Long> projectIds) {
        this.projectIds = projectIds;
    }

    public List<String> getProjectName() {
        return projectName;
    }

    public void setProjectName(List<String> projectName) {
        this.projectName = projectName;
    }

    public Long getAssignmentId() {
        return assignmentId;
    }

    public void setAssignmentId(Long assignmentId) {
        this.assignmentId = assignmentId;
    }
}
