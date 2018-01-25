package com.cheny.service;

import com.cheny.entity.Area;

import java.util.List;

/**
 * Created by cheny on 2017/12/3.
 */
public interface AreaService extends BaseService<Area> {

    List<Area> getByGrade(Area.Grade grade);

    List<Area> getAreaTree(Area.Grade grade);

    List<Area> getAll();

    List<Area> test(int a);

}
