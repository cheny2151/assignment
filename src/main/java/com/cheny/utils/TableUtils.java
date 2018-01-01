package com.cheny.utils;

import com.cheny.entity.SerialNumber;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by cheny on 2017/12/31.
 * 分表工具类
 */
public class TableUtils {

    private final static int MOLD_NUMBER = 5;

    private final static Map<Class, String> tableNumberMap = new HashMap<>();

    static {
        tableNumberMap.put(SerialNumber.class, "serialnumber_child_");
    }

    public static Long getMold(Long id) {
        return id % MOLD_NUMBER;
    }

    public static String getChildTableName(Long id, Class clazz) {
        String tableName = tableNumberMap.get(clazz);
        return tableName == null ? null : tableName + getMold(id);
    }

}
