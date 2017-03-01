/**
 * File         : CaiWebConfig.java
 * author       : Joosang Kim
 * version      : 0.0.2
 * description  : config java replace web.xml + tiles setting
 */
package com.ibm.gbs.gbs_cai_web.config;

import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.GsonHttpMessageConverter;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.socket.config.annotation.EnableWebSocket;


@Configuration
@EnableWebSocket
@EnableWebMvc
@ComponentScan(basePackages = "com.ibm.gbs.gbs_cai_web")
public class AppConfig extends WebMvcConfigurerAdapter {

    /**
     * Configure TilesConfigurer
     */
    @Bean
    public TilesConfigurer tilesConfigurer(){
        TilesConfigurer tilesConfigurer = new TilesConfigurer();
        tilesConfigurer.setDefinitions(new String[] {"/WEB-INF/views/**/tiles.xml"});
        tilesConfigurer.setCheckRefresh(true);
        return tilesConfigurer;
    }
    
    /**
     * Configure ViewResolvers to deliver preferred views.
     */
    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        TilesViewResolver viewResolver = new TilesViewResolver();
        registry.viewResolver(viewResolver);
    }
     
    /**
     * Configure ResourceHandlers to serve static resources like CSS/ Javascript etc...
     */
     
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/script/**").addResourceLocations("/WEB-INF/static/js/");
        registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/static/css/");
        registry.addResourceHandler("/images/**").addResourceLocations("/WEB-INF/static/images/");
        registry.addResourceHandler("/bootstrap/css/**").addResourceLocations("/WEB-INF/static/bootstrap/css/");
        registry.addResourceHandler("/bootstrap/js/**").addResourceLocations("/WEB-INF/static/bootstrap/js/");
        registry.addResourceHandler("/bootstrap/fonts/**").addResourceLocations("/WEB-INF/static/bootstrap/fonts/");
        registry.addResourceHandler("/assets/images/**").addResourceLocations("/WEB-INF/static/assets/images/");
        registry.addResourceHandler("/vendors/datatables/js/**").addResourceLocations("/WEB-INF/static/vendors/datatables/js/");
        registry.addResourceHandler("/vendors/**").addResourceLocations("/WEB-INF/static/vendors/");
        
    }
    
    /**
     * Configure View(.jsp) path
     */
    @Bean
    public ViewResolver getViewResolver(){
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/views/pages/");
        resolver.setSuffix(".jsp");
        return resolver;
    }
    
    /**
     * Configure Convert from Object to JSON 
     * - 추가목적 : Object를 JSON으로 변환(Ajax에서 사용)
     * - 추가이력 : 정연우(20170218)
     */
    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
    	GsonHttpMessageConverter msgConverter = new GsonHttpMessageConverter();
        Gson gson = new GsonBuilder().setPrettyPrinting().create(); 
    	msgConverter.setGson(gson);
        converters.add(msgConverter);
    }
    

    /**
     * Configure GSON
     * - 추가목적 : Object를 JSON으로 변환할 때 GSON 필요(Ajax에서 사용)
     * - 추가이력 : 정연우(20170218) 
     */
    @Bean
    public GsonHttpMessageConverter gson() {
    	GsonHttpMessageConverter gson = new GsonHttpMessageConverter();
    	return gson;
    }
    
    
    /**
     * MultipartResolver
     * - 추가목적 : 파일 업로드 및 다운로드 Multipart Resolver 
     * - 추가이력 : 신혜정(20170226) 
     */
    @Bean(name = "multipartResolver")
    public CommonsMultipartResolver multipartResolver() {
        CommonsMultipartResolver resolver = new CommonsMultipartResolver();
        resolver.setMaxUploadSizePerFile(100000000); //bytes 대략 100MB 
        resolver.setDefaultEncoding("utf-8");
        return resolver;
    }
    
    /**
     * addInterceptors
     * - 추가목적 : request 시 로그인 session 및 user 확인
     * - 추가이력 : 김주상(20170219)
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry){
        registry.addInterceptor( new AuthInterceptor()).addPathPatterns("/**").excludePathPatterns("/login")  ;

    }

}
