package com.cheny.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class TestAspect {

    @Pointcut("execution(* com.cheny.controller.RedisTest.*(..))")
    public void test() {
    }

    @Around("test()")
    public void beforeTest(ProceedingJoinPoint joinPoint) {
        try {
            System.out.println("-----before------");
            joinPoint.proceed();
            System.out.println("-----after------");
        } catch (Throwable throwable) {
            System.out.println("error");
        }
    }

}
