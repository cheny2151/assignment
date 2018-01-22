package com.cheny.dao;

import com.cheny.entity.Area;

import java.util.List;

/**
 * Created by cheny on 2017/12/3.
 */
public interface AreaDao extends BaseDao<Area> {

    List<Area> getByGrade(Area.Grade grade);

    List<Area> getByGradeAndParent(Area.Grade grade, Area area);

    List<Area> test();
}
