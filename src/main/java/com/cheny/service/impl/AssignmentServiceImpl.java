package com.cheny.service.impl;

import com.cheny.dao.AssignmentDao;
import com.cheny.dao.SerialNumberDao;
import com.cheny.entity.Assignment;
import com.cheny.entity.SerialNumber;
import com.cheny.service.AssignmentService;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import javax.annotation.Resource;
import java.util.HashSet;
import java.util.List;

/**
 * Created by cheny on 2017/9/21.
 */
@Service("assignmentServiceImpl")
public class AssignmentServiceImpl extends BaseServiceImpl<Assignment> implements AssignmentService {

    @Resource(name = "assignmentDaoImpl")
    private AssignmentDao assignmentDao;
    @Resource(name = "serialNumberDaoImpl")
    private SerialNumberDao serialNumberDao;

    @Resource(name = "assignmentDaoImpl")
    public void setBaseDao(AssignmentDao assignmentDao) {
        super.setBaseDao(assignmentDao);
    }

    @Override
    public void deleteAssignments(Long[] ids) {
        List<Assignment> assignments = findByIds(ids);
        for (Assignment assignment : assignments) {
            List<SerialNumber> serialNumbers = assignment.getSerialNumbers();
            /* 手动代替注解：级联删除
            for (SerialNumber serialNumber : serialNumbers) {
                serialNumberDao.remove(serialNumber);
            }*/
            assignmentDao.remove(assignment);
        }
    }

    @Override
    public void removeBeDeleted(Assignment origin, Assignment target) {
        Assert.notNull(origin, "Must not null");
        Assert.notNull(target, "Must not null");

        HashSet<Long> targetIds = new HashSet<>();
        for (SerialNumber serialNumber : target.getSerialNumbers()) {
            if (serialNumber.getId() != null) {
                targetIds.add(serialNumber.getId());
            }
        }

        //origin比target多出的则移除
        for (SerialNumber serialNumber : origin.getSerialNumbers()) {
            if (!targetIds.contains(serialNumber.getId())) {
                serialNumberDao.remove(serialNumber);
            }
        }

    }

}
