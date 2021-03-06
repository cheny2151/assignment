package com.cheny.service.impl;

import com.cheny.dao.AreaDao;
import com.cheny.entity.Area;
import com.cheny.service.AreaService;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/**
 * Created by cheny on 2017/12/3.
 */
@Transactional
@Service("areaServiceImpl")
public class AreaServiceImpl extends BaseServiceImpl<Area> implements AreaService {

    @Resource(name = "areaDaoImpl")
    private AreaDao areaDao;
    @Resource(name = "jsonRedisSerializerTemplate")
    private RedisTemplate<String, Object> jsonRedisTemplate;
    @Resource(name = "stringRedisSerializerTemplate")
    private RedisTemplate<String, String> stringRedisTemplate;
    @Resource(name = "jdkRedisSerializerTemplate")
    private RedisTemplate<String, byte[]> redisTemplate;

    @Resource(name = "areaDaoImpl")
    public void setBaseDao(AreaDao areaDao) {
        super.setBaseDao(areaDao);
    }

    public List<Area> getByGrade(Area.Grade grade) {
        return areaDao.getByGrade(grade);
    }

    public List<Area> getAreaTree(Area.Grade grade) {
        List<Area> provinces = areaDao.getByGrade(Area.Grade.province);
        if (!Area.Grade.province.equals(grade)) {
            List<Area> cities = new ArrayList<>();
            for (Area province : provinces) {
                List<Area> cityTemp = areaDao.getByGradeAndParent(Area.Grade.city, province);
                province.setChildTree(cityTemp);
                cities.addAll(cityTemp);
            }
            if (Area.Grade.district.equals(grade)) {
                for (Area city : cities) {
                    city.setChildTree(areaDao.getByGradeAndParent(Area.Grade.district, city));
                }
            }
        }
        return provinces;
    }

    @Override
    public List<Area> getAll() {
        List<Area> areas = areaDao.getByGrade(Area.Grade.province);
        for (Area area : areas) {
            List<Area> citys = areaDao.getByGradeAndParent(Area.Grade.city, area);
            for (Area city : citys) {
                city.setChildren(new HashSet<>(areaDao.getByGradeAndParent(Area.Grade.district, city)));
            }
            area.setChildren(new HashSet<>(citys));
        }
        return areas;
    }

    @Override
    public List<Area> test(int a) {
        return areaDao.test();
    }

}
