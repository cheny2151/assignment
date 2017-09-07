package com.cheny.entity;

import com.cheny.listener.EntityListener;
import com.fasterxml.jackson.annotation.JsonFormat;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * 基类
 * Created by cheny on 2017/7/23.
 */
@EntityListeners(EntityListener.class)
@MappedSuperclass
public class BaseEntity implements Serializable {

    private static final long serialVersionUID = -2229695558987927924L;

    /**
     * id
     */
    private Long id;

    /**
     * 创建日期
     */
    private Date createDate;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @JsonFormat(pattern = "yyyy-MM-DD HH:mm:ss")
    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
}
