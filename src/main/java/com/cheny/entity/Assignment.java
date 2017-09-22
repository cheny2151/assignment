package com.cheny.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by cheny on 2017/9/17.
 */
@Entity
@Table
public class Assignment extends BaseEntity {

    private static final long serialVersionUID = -3482466197794953047L;

    /**
     * 流水号
     */
    private List<SerialNumber> serialNumbers = new ArrayList<>();

    /**
     * 备注
     */
    private String memo;

    /**
     * 接单日期
     */
    private Date startDate;

    /**
     * 完成日期
     */
    private Date finalDate;

    @OneToMany(mappedBy = "assignment", fetch = FetchType.LAZY, cascade = CascadeType.MERGE)
    public List<SerialNumber> getSerialNumbers() {
        return serialNumbers;
    }

    public void setSerialNumbers(List<SerialNumber> serialNumbers) {
        this.serialNumbers = serialNumbers;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getFinalDate() {
        return finalDate;
    }

    public void setFinalDate(Date finalDate) {
        this.finalDate = finalDate;
    }
}
