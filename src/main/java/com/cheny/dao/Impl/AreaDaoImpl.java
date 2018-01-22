package com.cheny.dao.Impl;

import com.cheny.dao.AreaDao;
import com.cheny.entity.Area;
import org.springframework.stereotype.Repository;

import javax.persistence.FlushModeType;
import java.math.BigInteger;
import java.util.ArrayList;
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
        return entityManager.createQuery(jpql, Area.class).setFlushMode(FlushModeType.COMMIT).setParameter("grade", grade).setParameter("parent", parent).getResultList();
    }

    @Override
    public List<Area> test() {
        String sql = "select area.id,area.name,area.fullName,child.id as 'childId',child.name as 'childName',child.fullName as 'childFullName' from xx_area area right join xx_area child on area.id = child.parent_id where area.grade = 0 order by area.id";
        List<Object[]> resultList = entityManager.createNativeQuery(sql).setFlushMode(FlushModeType.COMMIT).getResultList();
        Long idTemp = null;
        Area areaTemp = null;
        ArrayList<Area> areas = new ArrayList<>();
        for (Object[] objects : resultList) {
            Long id = ((BigInteger) objects[0]).longValue();
            if (!id.equals(idTemp)) {
                areaTemp = new Area();
                areaTemp.setId(id);
                areaTemp.setName((String) objects[1]);
                areaTemp.setFullName((String) objects[2]);
                areaTemp.setChildTree(new ArrayList<>());
                idTemp = id;
                areas.add(areaTemp);
            }
            Area child = new Area();
            child.setId(((BigInteger) objects[3]).longValue());
            child.setName((String) objects[4]);
            child.setFullName((String) objects[5]);
            areaTemp.getChildTree().add(child);
        }
        for (Area area : areas) {
            System.out.println(area);
            for (Area child : area.getChildTree()) {
                System.out.println(child);
            }
        }
        return null;
    }
}
