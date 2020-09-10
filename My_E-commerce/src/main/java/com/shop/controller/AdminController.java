/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.controller;

import com.shop.model.FoodProducts;
import com.shop.model.Products;
import com.shop.service.AdminServiceImpl;
import com.shop.service.Service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Saiful
 */


@org.springframework.stereotype.Controller
@RequestMapping("/admin")
public class AdminController {
    
     
    @Autowired
    AdminServiceImpl service;
//    
//    @Autowired
//    UserDetailsServiceImp userDetailsServiceImp;
//    
//    
//     Users user=userDetailsServiceImp.userc;
//    
    
    @RequestMapping("/addProduct")
    public String addProducts(ModelMap modelmap) {
        
//        List<Products> productlist = service.getProductlist();
//        List<FoodProducts> foodproductlist = service.getFoodProductlist();
//        productlist.size();
//        foodproductlist.size();
//        System.out.println(productlist.size());
//        modelmap.addAttribute("productlist", productlist);
//        modelmap.addAttribute("foodproductlist", foodproductlist);
        return "index";
    }
    
    
        @RequestMapping("/addManager")
    public String addManager(ModelMap modelmap) {
        return "index";
    }
    
    
    
        @RequestMapping("/addSealsman")
    public String addSealsman(ModelMap modelmap) {
        return "index";
    }
    
      @RequestMapping("/addVendor")
    public String addVendor(ModelMap modelmap) {
        return "index";
    }
      @RequestMapping("/deletProducts")
    public String deletProducts(ModelMap modelmap) {
        return "index";
    }
      @RequestMapping("/deletManager")
    public String deletManager(ModelMap modelmap) {
        return "index";
    }
    @RequestMapping("/deletSealsMan")
    public String deletSealsMan(ModelMap modelmap) {
        return "index";
    }
    @RequestMapping("/deletVendor")
    public String deletVendor(ModelMap modelmap) {
        return "index";
    }
    
     @RequestMapping("/deletUsers")
    public String deletUsers(ModelMap modelmap) {
        return "index";
    }
    
    
    
    @RequestMapping("/admins")
    public String Admins(ModelMap modelmap) {
        return "index";
    }
    @RequestMapping("/managers")
    public String Managers(ModelMap modelmap) {
        return "index";
    }
     
    @RequestMapping("/vandors")
    public String vandors(ModelMap modelmap) {
        return "index";
    }
     
    @RequestMapping("/sealsman")
    public String sealsman(ModelMap modelmap) {
        return "index";
    }
     
    @RequestMapping("/products")
    public String products(ModelMap modelmap) {
        return "index";
    }
    
    @RequestMapping("/Total_Seals")
    public String totalSeals(ModelMap modelmap) {
        return "index";
    }
    
    @RequestMapping("/last_month_seals")
    public String mounthlyseals(ModelMap modelmap) {
        return "index";
    }
    
    @RequestMapping("/last_week_seals")
    public String weeklySeals(ModelMap modelmap) {
        return "index";
    }
    
    @RequestMapping("/orders")
    public String orders(ModelMap modelmap) {
        return "index";
    }
    
    @RequestMapping("/storeproducts")
    public String storeproducts(ModelMap modelmap) {
        return "index";
    }
    
    @RequestMapping("/see_profiles")
    public String see_profiles(ModelMap modelmap) {
        return "index";
    }
    
    @RequestMapping("/edit_profiles")
    public String edit_profiles(ModelMap modelmap) {
        return "index";
    }
    
    @RequestMapping("/see_emails")
    public String see_emails(ModelMap modelmap) {
        return "index";
    }
    
    @RequestMapping("/see_invoice")
    public String see_invoice(ModelMap modelmap) {
        return "index";
    }
    
    
     @RequestMapping("/see_cats")
    public String see_cats(ModelMap modelmap) {
        return "index";
    }
    
     @RequestMapping("/print_report")
    public String print_report(ModelMap modelmap) {
        return "index";
    }
    
    
    
    
    
    
}
