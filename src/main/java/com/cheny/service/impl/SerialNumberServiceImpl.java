package com.cheny.service.impl;

import com.cheny.dao.SerialNumberDao;
import com.cheny.entity.SerialNumber;
import com.cheny.entity.SerialNumberVO;
import com.cheny.service.SerialNumberService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by cheny on 2017/9/22.
 */
@Service("serialNumberServiceImpl")
public class SerialNumberServiceImpl extends BaseServiceImpl<SerialNumber> implements SerialNumberService {

    @Resource(name = "serialNumberDaoImpl")
    private SerialNumberDao serialNumberDao;

    @Resource(name = "serialNumberDaoImpl")
    private void setBaseDao(SerialNumberDao serialNumberDao) {
        super.setBaseDao(serialNumberDao);
    }


    @Override
    public SerialNumberVO findInChildTable(Long id) {
        return serialNumberDao.findInChildTable(id);
    }
}
