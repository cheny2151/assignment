package com.cheny.service.impl;

import com.cheny.dao.ProjectDao;
import com.cheny.entity.Project;
import com.cheny.service.ProjectService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by cheny on 2017/9/11.
 */
@Service
public class ProjectServiceImpl extends BaseServiceImpl<Project> implements ProjectService {

    @Resource(name = "projectDaoImpl")
    public ProjectDao projectDao;

    @Resource(name = "projectDaoImpl")
    public void setBaseDao(ProjectDao projectDao) {
        super.setBaseDao(projectDao);
    }
}
