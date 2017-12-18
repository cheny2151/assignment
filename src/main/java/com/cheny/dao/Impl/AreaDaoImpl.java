package com.cheny.dao.Impl;

import com.cheny.dao.AreaDao;
import com.cheny.entity.Area;
import org.springframework.stereotype.Repository;

import javax.persistence.FlushModeType;
import java.util.List;

/**
 * Created by cheny on 2017/12/3.
 */
@Repository("areaDaoImpl")
public class AreaDaoImpl extends BaseDaoImpl<Area> implements AreaDao {


    @Override
    public List<Area> getByGrade(Area.Grade grade) {
        String jpql = "select area from Area area where area.grade = :grade";
        return entityManager.createQuery(jpql, Area.class).setFlushMode(FlushModeType.COMMIT).setParameter("grade", grade).getResultList();
    }

    @Override
    public List<Area> getByGradeAndParent(Area.Grade grade, Area parent) {
        String jpql = "select area from Area area where area.grade = :grade and area.parent=:parent";
        return entityManager.createQuery(jpql, Area.class).setFlushMode(FlushModeType.COMMIT).setParameter("grade", grade).setParameter("parent",parent).getResultList();
    }
}
