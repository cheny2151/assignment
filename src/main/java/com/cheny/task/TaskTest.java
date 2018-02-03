package com.cheny.task;

import org.apache.commons.lang.time.DateFormatUtils;
import org.apache.log4j.Logger;
import org.springframework.context.annotation.Lazy;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.Date;

@Component
@Lazy(value = false)
public class TaskTest {

    private Logger logger = Logger.getLogger(this.getClass());

    @Scheduled(cron = "0/5 * * * * ? ")
    public void scheduled() {
        logger.info(DateFormatUtils.format(new Date(), "yyyy-MM-dd HH:mm:ss"));
    }

    @Async
    public void taskExecute() {
        logger.info("async task running...");
    }

}
