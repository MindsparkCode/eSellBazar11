package com.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/Cart")
public class CartController {

    
      @RequestMapping("/seecarts")
    public String addVendor(ModelMap modelmap) {
        return "index";
    }
      @RequestMapping("/deletcarts")
    public String deletProducts(ModelMap modelmap) {
        return "index";
    }
    
    @RequestMapping("/addcarts")
    public String addCarts(ModelMap modelmap) {
        return "index";
    }
    
	
}