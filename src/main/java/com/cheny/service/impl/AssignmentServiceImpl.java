package com.cheny.service.impl;

import com.cheny.dao.AssignmentDao;
import com.cheny.entity.Assignment;
import com.cheny.service.AssignmentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by cheny on 2017/9/21.
 */
@Service("assignmentServiceImpl")
public class AssignmentServiceImpl extends BaseServiceImpl<Assignment> implements AssignmentService {

    @Resource(name = "assignmentDaoImpl")
    private AssignmentDao assignmentDao;

    @Resource(name = "assignmentDaoImpl")
    public void setBaseDao(AssignmentDao assignmentDao) {
        super.setBaseDao(assignmentDao);
    }

}
