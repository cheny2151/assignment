package com.cheny.javaconfig;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Component;

@Configurable
@Component
public class BeanConfig {

    @Profile("dev")
    @Bean(name = "profilesBean")
    public String devBean() {
        return "dev";
    }

    @Profile("prod")
    @Bean(name = "profilesBean")
    public String prodBean() {
        return "prod";
    }

}
