package com.cheny.utils;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;


/**
 * Created by cheny on 2017/12/3.
 */
public class JsonUtils {

    private final static ObjectMapper objectMapper = new ObjectMapper();

    public static String toJson(Object object) {
        try {
            return objectMapper.writeValueAsString(object);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

}
