package com.cheny.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * 项目
 * Created by cheny on 2017/7/23.
 */
@Entity
@Table
public class Project extends BaseEntity {

    private static final long serialVersionUID = -7172278231663882157L;

    private List<Analyst> analysts = new ArrayList<>();

    private List<SerialNumber> serialNumbers = new ArrayList<>();

    /**
     * 标准
     */
    private String standard;

    private Double price;

    @ManyToMany(mappedBy = "projects", fetch = FetchType.LAZY)
    public List<Analyst> getAnalysts() {
        return analysts;
    }

    public void setAnalysts(List<Analyst> analysts) {
        this.analysts = analysts;
    }

    @ManyToMany(mappedBy = "projects", fetch = FetchType.LAZY)
    public List<SerialNumber> getSerialNumbers() {
        return serialNumbers;
    }

    public void setSerialNumbers(List<SerialNumber> serialNumbers) {
        this.serialNumbers = serialNumbers;
    }

    public String getStandard() {
        return standard;
    }

    public void setStandard(String standard) {
        this.standard = standard;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    //删除前处理
    @PreRemove
    public void PreRemove() {
        for (Analyst analyst : analysts) {
            analyst.getProjects().remove(this);
        }
        for (SerialNumber serialNumber : serialNumbers) {
            serialNumber.getProjects().remove(this);
        }
    }
}
