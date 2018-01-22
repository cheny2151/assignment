package com.cheny.dao.Impl;

import com.cheny.dao.SerialNumberDao;
import com.cheny.entity.Analyst;
import com.cheny.entity.Project;
import com.cheny.entity.SerialNumber;
import com.cheny.entity.SerialNumberVO;
import com.cheny.utils.JsonUtils;
import com.cheny.utils.TableUtils;
import org.springframework.stereotype.Repository;

import javax.persistence.FlushModeType;
import java.util.ArrayList;

/**
 * Created by cheny on 2017/9/22.
 */
@Repository("serialNumberDaoImpl")
public class SerialNumberDaoImpl extends BaseDaoImpl<SerialNumber> implements SerialNumberDao {

    @Override
    public void persist(SerialNumber serialNumber) {
        super.persist(serialNumber);
        //分表
        //取模,获取表明
        String childTableName = TableUtils.getChildTableName(serialNumber.getId(), SerialNumber.class);
        String createTableSql = " create table if not exists " + "`" + childTableName + "` (" +
                " `id` bigint(20) not null," +
                " `createDate` datetime DEFAULT NULL," +
                " `number` int(11) not null," +
                " `analystIds` varchar(255) default null," +
                " `analystName` varchar(255) default null," +
                " `projectIds` varchar(255) default null," +
                " `projectName` varchar(255) default null," +
                " `assignmentId` bigint(20) not null," +
                " PRIMARY KEY (`id`)" +
                ")ENGINE=InnoDB DEFAULT CHARSET=utf8;";
        entityManager.createNativeQuery(createTableSql).executeUpdate();
        // 准备数据
        ArrayList<Long> analystIds = new ArrayList<>();
        ArrayList<String> analystNames = new ArrayList<>();
        for (Analyst analyst : serialNumber.getAnalysts()) {
            analystIds.add(analyst.getId());
            analystNames.add(analyst.getName());
        }
        ArrayList<Long> projectIds = new ArrayList<>();
        ArrayList<String> projectNames = new ArrayList<>();
        for (Project project : serialNumber.getProjects()) {
            projectIds.add(project.getId());
            projectNames.add(project.getName());
        }
        //插入数据
        String insertSql = "insert into `" + childTableName + "` " + "values(:id,:createDate,:number,:analystIds,:analystName,:projectIds,:projectName,:assignmentId)";
        entityManager.createNativeQuery(insertSql).setParameter("id", serialNumber.getId()).setParameter("createDate", serialNumber.getCreateDate())
                .setParameter("number", serialNumber.getNumber()).setParameter("analystIds", JsonUtils.toJson(analystIds))
                .setParameter("analystName", JsonUtils.toJson(analystNames)).setParameter("projectIds", JsonUtils.toJson(projectIds))
                .setParameter("projectName", JsonUtils.toJson(projectNames)).setParameter("assignmentId", serialNumber.getAssignment().getId())
                .executeUpdate();
    }


    public SerialNumberVO findInChildTable(Long id) {
        String childTableName = TableUtils.getChildTableName(id, SerialNumber.class);
        String sql = "select * from `" + childTableName + "` child where child.id = :id";
        Object[] result = (Object[]) entityManager.createNativeQuery(sql).setParameter("id", id).setFlushMode(FlushModeType.COMMIT).getSingleResult();
        for (Object o : result) {
            System.out.println(o);
        }
        return null;
    }
}
