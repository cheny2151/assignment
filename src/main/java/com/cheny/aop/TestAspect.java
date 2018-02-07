package com.cheny.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class TestAspect {

    @Pointcut("execution(* com.cheny.controller.TestController.test*(..)) && !execution(* com.cheny.controller.TestController.exception(..)))")
    public void test() {
    }

    @Around("test()")
    public String around(ProceedingJoinPoint joinPoint) {
        try {
            System.out.println("-----before------");
            Object proceed = joinPoint.proceed();
            System.out.println(proceed);
            System.out.println("-----after------");
        } catch (Throwable throwable) {
            System.out.println("error");
            throwable.printStackTrace();
        }
        return "/error_404";
    }

    /**
     * 限定参数并且将参数传入通知
     *
     * @param number
     */
    @Before("execution(* com.cheny.service.AreaService.*(int))&&args(number)")
    public void before(int number) {
        System.out.println("cut a" + number);
    }

    /**
     * 限定bean(id)
     */
    @After("execution(* com.cheny.service.BaseService.*(..)) && bean(areaServiceImpl)")
    public void after() {
        System.out.println("after");
    }

}
