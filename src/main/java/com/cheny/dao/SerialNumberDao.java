package com.cheny.dao;

import com.cheny.entity.SerialNumber;
import com.cheny.entity.SerialNumberVO;

/**
 * Created by cheny on 2017/9/22.
 */
public interface SerialNumberDao extends BaseDao<SerialNumber> {

    /**
     * 子表查询
     */
    SerialNumberVO findInChildTable(Long id);

}
