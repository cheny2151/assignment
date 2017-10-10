package com.cheny.service;

import com.cheny.entity.Assignment;

/**
 * Created by cheny on 2017/9/21.
 */
public interface AssignmentService extends BaseService<Assignment> {

    /**
     * 删除任务单，级联流水号
     * @param ids ids
     */
    void deleteAssignments(Long[] ids);
}
