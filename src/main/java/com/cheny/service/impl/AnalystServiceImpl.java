package com.cheny.service.impl;

import com.cheny.dao.AnalystDao;
import com.cheny.dao.Impl.AnalystDaoImpl;
import com.cheny.entity.Analyst;
import com.cheny.service.AnalystService;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by cheny on 2017/8/13.
 */
@Service("analystServiceImpl")
public class AnalystServiceImpl extends BaseServiceImpl<Analyst> implements AnalystService {

    @Resource(name = "analystDaoImpl")
    private AnalystDao analystDao;

    @Resource(name = "analystDaoImpl")
    private void setBaseDao(AnalystDaoImpl analystDaoImpl) {
        super.setBaseDao(analystDaoImpl);
    }

}
