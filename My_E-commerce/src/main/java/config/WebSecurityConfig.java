///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package config;
//
///**
// *
// * @author User
// */
////import org.springframework.security.config.annotation.authentication.builders.*;  
//import com.shop.service.UserDetailsServiceImp;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.*;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
//
//
//@EnableWebSecurity
//@Configuration
//public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
////    @Bean  
////    @Override
////     public UserDetailsService userDetailsService()  {  
////        InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();  
////        manager.createUser(User.withDefaultPasswordEncoder().username("naz").  
////        password("123").roles("abc").build());  
////        
////        manager.createUser(User.withDefaultPasswordEncoder().username("haq").  
////        password("123").roles("ADMIN").build());  
////        
////        
////        return manager;  
////    }
////    
//    
///* authenticat useing database  */ 
//    @Bean
//    @Override
//    public UserDetailsService userDetailsService() {
//        return new UserDetailsServiceImp();
//    }
//
//   @Bean
//    public BCryptPasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
//    }
//
//    ;
//  
//  @Override
//    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//        auth.userDetailsService(userDetailsService()).passwordEncoder(passwordEncoder());
//    }
///* authenticat useing database (ends) */ 
//    
//    
//    
//    
//  
////    protected void configure(HttpSecurity http) throws Exception {  
////                  
////        http  
////        .antMatcher("/")                                 
////        .authorizeRequests()  
////            .anyRequest().hasRole("ADMIN")  
////            .and()  
////        .httpBasic();  
////    }  
////    
//// protected void configure(HttpSecurity http) throws Exception {  
////    http  
////    .authorizeRequests()  
////    .anyRequest().authenticated()  
////    .and()  
////    .formLogin()  
////    .and()  
////    .httpBasic();  
////    }  
//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//
//        
//        
//        
//        
//        http.authorizeRequests()
//                 
//                .antMatchers("/index", "/", "/login").permitAll()
//                .antMatchers("/normal_user/**").authenticated()
//                .antMatchers("/admin_user/**").hasRole("ADMIN")             
////              .anyRequest().authenticated()
//                
//
//                .and()
//                .formLogin()
//                .loginPage("/login")
//                
//                
//                .and()
//                .logout()
//                .logoutRequestMatcher(new AntPathRequestMatcher("/logout_2"))
//                .logoutSuccessUrl("/logout_success.html");
//
//    }
//
////protected void configure(HttpSecurity http) throws Exception {
////    http
////        .authorizeRequests()                                                                
////            .antMatchers("/resources/**", "/signup", "/about").permitAll()                  
////            .antMatchers("/admin/**").hasRole("ADMIN")                                      
////            .antMatchers("/db/**").access("hasRole('ADMIN') and hasRole('DBA')")            
////            .anyRequest().authenticated()                                                   
////            .and()
////        // ...
////        .formLogin();
////}
////   @Override
////    protected void configure(HttpSecurity http) throws Exception {
////
////        http.
////                authorizeRequests()
////                .antMatchers("/").permitAll()
////                .antMatchers("/login").permitAll()
////                .antMatchers("/registration").permitAll()
////                .anyRequest()
////                .authenticated()
////                
////                .and().csrf().disable()
////                
////                .formLogin()
////                .loginPage("/login").failureUrl("/login?error=true")
////                .defaultSuccessUrl("/admin/home")
////                .usernameParameter("email")
////                .passwordParameter("password")
////                
////                .and().logout()
////                .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
////                .logoutSuccessUrl("/").and().exceptionHandling()
////                .accessDeniedPage("/access-denied");
////}
////sample
////    protected void configure2(HttpSecurity http) throws Exception {
////        
////        
////        
////       http.httpBasic().
////        
////
////        http.
////                authorizeRequests()
////                .antMatchers("/").permitAll()
////                .antMatchers("/login").permitAll()
////                .antMatchers("/registration").permitAll()
////                .antMatchers("/admin/**").hasAuthority("ADMIN").anyRequest()
////                .authenticated().and().csrf().disable().formLogin()
////                .loginPage("/login").failureUrl("/login?error=true")
////                .defaultSuccessUrl("/admin/home")
////                .usernameParameter("email")
////                .passwordParameter("password")
////                .and().logout()
////                .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
////                .logoutSuccessUrl("/").and().exceptionHandling()
////                .accessDeniedPage("/access-denied");
////}
//}
