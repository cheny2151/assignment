package com.cheny.javaconfig;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ImportResource;
import org.springframework.context.annotation.PropertySource;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.stereotype.Controller;

import java.beans.PropertyVetoException;

//@Configurable
//@ComponentScan(basePackages = {"com.cheny"}, excludeFilters = {@ComponentScan.Filter({Controller.class})})
//@PropertySource(value = {"classpath:system.properties"})
//@ImportResource("classpath*:spring/applicationContext*.xml")
public class RootConfig {

   /*@Value("${jdbc.driver}")
    private String driver;
    @Value("${jdbc.url}")
    private String jdbcUrl;
    @Value("${jdbc.username}")
    private String username;
    @Value("${jdbc.password}")
    private String password;
    @Value("${connection_pools.initial_pool_size}")
    private int initialPoolSize;
    @Value("${connection_pools.min_pool_size}")
    private int minPoolSize;
    @Value("${connection_pools.max_pool_size}")
    private int maxPoolSize;
    @Value("${connection_pools.max_idle_time}")
    private int maxIdleTime;
    @Value("${connection_pools.acquire_increment}")
    private int acquireIncrement;
    @Value("${connection_pools.checkout_timeout}")
    private int checkoutTimeout;

    @Bean(name = "dataSource",destroyMethod = "close")
    public ComboPooledDataSource setComboPooledDataSource() {
        ComboPooledDataSource comboPooledDataSource = new ComboPooledDataSource();
        try {
            comboPooledDataSource.setDriverClass(driver);
            comboPooledDataSource.setJdbcUrl(jdbcUrl);
            comboPooledDataSource.setUser(username);
            comboPooledDataSource.setPassword(password);
            comboPooledDataSource.setInitialPoolSize(initialPoolSize);
            comboPooledDataSource.setMinPoolSize(minPoolSize);
            comboPooledDataSource.setMaxPoolSize(maxPoolSize);
            comboPooledDataSource.setMaxIdleTime(maxIdleTime);
            comboPooledDataSource.setAcquireIncrement(acquireIncrement);
            comboPooledDataSource.setCheckoutTimeout(checkoutTimeout);
        } catch (PropertyVetoException e) {
            e.printStackTrace();
        }
        return comboPooledDataSource;
    }

    @Bean
    public LocalContainerEntityManagerFactoryBean getEntityManagerFactory() {
        LocalContainerEntityManagerFactoryBean entityManagerFactory = new LocalContainerEntityManagerFactoryBean();
        entityManagerFactory.setDataSource(setComboPooledDataSource());
        entityManagerFactory.setPersistenceXmlLocation("classpath:/persistence.xml");
        entityManagerFactory.setPersistenceUnitName("persistenceUnit");
        return entityManagerFactory;
    }*/

}
