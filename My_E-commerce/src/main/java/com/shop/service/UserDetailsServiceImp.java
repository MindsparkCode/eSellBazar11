///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package com.shop.service;
//
//
//import com.shop.model.Users;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//
///**
// *
// * @author nazmul
// */
//@org.springframework.stereotype.Service
//public class UserDetailsServiceImp implements UserDetailsService {
//
//    @Autowired
//    SecurityService userService;
//   public Users userc;
//
//    @Override
//    public UserDetails loadUserByUsername(String userEmail) throws UsernameNotFoundException {
//        Users user = userService.getUserByIdAndPasswordFromDB(userEmail);
//        User.UserBuilder builder = null;
//        if (user != null) {
//            builder = org.springframework.security.core.userdetails.User.withUsername(user.getEmail());
//            builder.password(user.getPassword()).roles(user.getRoles());
//            userc=user;
//        } else {
//            throw new UsernameNotFoundException("User not found.");
//        }
//        return builder.build();
//    }
//
//}
