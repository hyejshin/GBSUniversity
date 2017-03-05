/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ibm.gbs.gbs_cai_web.config;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import javax.sql.DataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ResourceLoader;
import org.springframework.core.io.support.ResourcePatternUtils;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.SimpleDriverDataSource;

@Configuration
@MapperScan("com.ibm.gbs.gbs_cai_web.mapper")
public class DataConfig {
    @Autowired
    private ResourceLoader  resourceLoader;
    private Properties prop = new Properties();   
    
    @Bean
    public DataSource dataSource()  {
        //propeties file setting
        String filename = "properties/db.properties";
        InputStream input =getClass().getClassLoader().getResourceAsStream(filename);
        try {
            prop.load(input);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        SimpleDriverDataSource dataSource = new SimpleDriverDataSource();
        dataSource.setDriverClass(com.mysql.jdbc.Driver.class);
        dataSource.setUsername(prop.getProperty("USER"));
        dataSource.setUrl(prop.getProperty("URL"));
        dataSource.setPassword(prop.getProperty("PASSWORD"));
        System.out.println(dataSource.getPassword() + "|| " + dataSource.getUsername()+"||"+dataSource.getUrl());
        return dataSource;
    }

    @Bean
    public DataSourceTransactionManager transactionManager() {
        return new DataSourceTransactionManager(dataSource());
    }

    @Bean
    public SqlSessionFactoryBean sqlSessionFactory() throws Exception {
        SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
        sessionFactory.setDataSource(dataSource());
        sessionFactory.setMapperLocations(ResourcePatternUtils.getResourcePatternResolver(resourceLoader).getResources("classpath:/mapper/*.xml"));
        sessionFactory.setTypeAliasesPackage("com.ibm.gbs.gbs_cai_web.vo");
        return sessionFactory;
    }

}
