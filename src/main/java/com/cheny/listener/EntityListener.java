package com.cheny.listener;

import com.cheny.entity.BaseEntity;
import org.springframework.stereotype.Component;

import javax.persistence.PrePersist;
import java.util.Date;

/**
 * 创建时自动设置属性
 * Created by cheny on 2017/7/23.
 */
@Component
public class EntityListener {

    /**
     * 保存前处理
     *
     * @param baseEntity 基类
     */
    @PrePersist
    public void persist(BaseEntity baseEntity){
        baseEntity.setCreateDate(new Date());
    }
}
