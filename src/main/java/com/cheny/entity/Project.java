package com.cheny.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import java.util.List;

/**
 * 项目
 * Created by cheny on 2017/7/23.
 */
@Entity
@Table
public class Project extends BaseEntity {

    private static final long serialVersionUID = -7172278231663882157L;

    private String projectName;

    private List<Analyst> analysts;

    private List<SerialNumber> serialNumbers;

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    @ManyToMany(mappedBy = "projects", fetch = FetchType.LAZY)
    public List<Analyst> getAnalyst() {
        return analysts;
    }

    public void setAnalyst(List<Analyst> analysts) {
        this.analysts = analysts;
    }

    @ManyToMany(mappedBy = "projects", fetch = FetchType.LAZY)
    public List<SerialNumber> getSerialNumbers() {
        return serialNumbers;
    }

    public void setSerialNumbers(List<SerialNumber> serialNumbers) {
        this.serialNumbers = serialNumbers;
    }
}
