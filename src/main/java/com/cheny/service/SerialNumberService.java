package com.cheny.service;

import com.cheny.entity.SerialNumber;
import com.cheny.entity.SerialNumberVO;

/**
 * Created by cheny on 2017/9/22.
 */
public interface SerialNumberService extends BaseService<SerialNumber> {

    SerialNumberVO findInChildTable(Long id);

}
