package com.cheny.aop;

import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class TestAspect {

    @Pointcut("execution(* com.cheny.controller.RedisTest.test2(..))")
    public void test() {
    }

    @Around("test()")
    public void beforeTest() {
        System.out.println("........");
    }

}
