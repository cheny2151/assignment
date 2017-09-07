package com.cheny.entity;

import javax.persistence.*;
import java.util.List;

/**
 * 项目
 * Created by cheny on 2017/7/23.
 */
@Entity
@Table
public class Project extends BaseEntity{

    private static final long serialVersionUID = -7172278231663882157L;

    private String projectName;

    private Analyst analyst;

    private List<SerialNumber> serialNumbers;

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    public Analyst getAnalyst() {
        return analyst;
    }

    public void setAnalyst(Analyst analyst) {
        this.analyst = analyst;
    }

    @ManyToMany(mappedBy = "projects",fetch = FetchType.LAZY)
    public List<SerialNumber> getSerialNumbers() {
        return serialNumbers;
    }

    public void setSerialNumbers(List<SerialNumber> serialNumbers) {
        this.serialNumbers = serialNumbers;
    }
}
