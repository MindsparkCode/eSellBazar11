/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import javax.sql.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.BeanNameViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

/**
 *
 * @author Saiful
 */
@EnableWebMvc
@Configuration
@ComponentScan({"com.shop.controller,com.shop.repository,com.shop.service"})
public class SpringConfig implements WebMvcConfigurer {

    @Bean
    public BeanNameViewResolver beanNameResolver() {
        BeanNameViewResolver br = new BeanNameViewResolver();
        return br;
    }

    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setViewClass(JstlView.class);
        viewResolver.setPrefix("/WEB-INF/views/");
        viewResolver.setSuffix(".jsp");

        return viewResolver;
    }

//   @Override
//   public void addRes
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/*.html").addResourceLocations("/WEB-INF/html/*");
        registry.addResourceHandler("/*.jsp").addResourceLocations("/WEB-INF/views/*");
//        registry.addResourceHandler("/desh/").addResourceLocations("/WEB-INF/views/dashboard/*");
        registry.addResourceHandler("/style.css").addResourceLocations("/WEB-INF/views/");
        registry.addResourceHandler("/img/**").addResourceLocations("/WEB-INF/bootcss/img/");
        registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/bootcss/css/");
        registry.addResourceHandler("/assets/**").addResourceLocations("/WEB-INF/bootcss/assets/");
        registry.addResourceHandler("/rs-plugin/**").addResourceLocations("/WEB-INF/bootcss/rs-plugin/");
        registry.addResourceHandler("/layerslider/**").addResourceLocations("/WEB-INF/bootcss/layerslider/");
        registry.addResourceHandler("/fonts/**").addResourceLocations("/WEB-INF/bootcss/fonts/");
        registry.addResourceHandler("/rs-plugin/**").addResourceLocations("/WEB-INF/bootcss/rs-plugin/");
        //registry.addResourceHandler("/css/shortcode/**").addResourceLocations("/WEB-INF/css/shortcode/");
        // registry.addResourceHandler("/images/shop/cart/**").addResourceLocations("/WEB-INF/images/shop/cart/");
//        registry.addResourceHandler("/images/**").addResourceLocations("/WEB-INF/images/");
        registry.addResourceHandler("/js/vendor/**").addResourceLocations("/WEB-INF/bootcss/js/vendor/");
        registry.addResourceHandler("/rs-plugin/js/**").addResourceLocations("/WEB-INF/bootcss/rs-plugin/js/");
        registry.addResourceHandler("/js/**").addResourceLocations("/WEB-INF/bootcss/js/");
        registry.addResourceHandler("/desh/dcss/img/**").addResourceLocations("/WEB-INF/dcss/img/");        
         registry.addResourceHandler("/desh/dcss/css/**").addResourceLocations("/WEB-INF/dcss/css/");        
        registry.addResourceHandler("/desh/dcss/js/**").addResourceLocations("/WEB-INF/dcss/js/");
        registry.addResourceHandler("/desh/dcss/fonts/**").addResourceLocations("/WEB-INF/dcss/fonts/");
        
        
        
          registry.addResourceHandler("/dcss/img/**").addResourceLocations("/WEB-INF/dcss/img/");        
         registry.addResourceHandler("/dcss/css/**").addResourceLocations("/WEB-INF/dcss/css/");        
        registry.addResourceHandler("/dcss/js/**").addResourceLocations("/WEB-INF/dcss/js/");
        registry.addResourceHandler("/dcss/fonts/**").addResourceLocations("/WEB-INF/dcss/fonts/");
        
        //registry.addResourceHandler("/*.css").addResourceLocations("/WEB-INF/css/");        
        // registry.addResourceHandler("/*.xhtml").addResourceLocations("/WEB-INF/views/xhtml/");
        // registry.addResourceHandler("/js/**").addResourceLocations("/WEB-INF/fcss/js/*");               
//registry.addResourceHandler("/acss/**").addResourceLocations("/WEB-INF/resources/css/*"); 
    }

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/").setViewName("forward:index.jsp");
    }

    @Bean
    public DataSource getDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost/ssmshop");
        dataSource.setUsername("root");
        dataSource.setPassword("");

        return dataSource;
    }

    @Bean
    public JdbcTemplate getJdbcTamplate() {
        JdbcTemplate jdbctTemplate = new JdbcTemplate(getDataSource());
        return jdbctTemplate;
    }

}
