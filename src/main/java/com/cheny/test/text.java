package com.cheny.test;

import com.cheny.utils.JsonMessage;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * Created by cheny on 2017/7/24.
 */
public class text {

    @PersistenceContext
    private EntityManager entityManager;

    private ApplicationContext applicationContext;

    @Before
    public void before(){
        applicationContext = new ClassPathXmlApplicationContext("spring/applicationContext.xml");

    }

    @Test
    public void test(){
        System.out.println(JsonMessage.success("applicationContext",applicationContext));
        System.out.println(1);
    }
}
