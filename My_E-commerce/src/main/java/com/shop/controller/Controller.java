/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.controller;

import com.shop.model.Cart;
import com.shop.model.Orders;
import com.shop.model.Products;
import com.shop.model.Shipment;
import com.shop.model.Users;
import com.shop.service.Service;
import static com.sun.corba.se.impl.util.Utility.printStackTrace;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Saiful
 */
@org.springframework.stereotype.Controller
@RequestMapping("")
public class Controller {
    
    @Autowired
    Service service;
//    
//    @Autowired
//    UserDetailsServiceImp userDetailsServiceImp;

public static int id=3;



     Users user;
     
     
  
//    
//    
//    @RequestMapping("/")
//    public String welcome(ModelMap modelmap) {
//        user=service.getUserbyId(id);
//        
//        int id=user.getId();
//        
//        
//        List<Products> allproductlist = service.geAllProductlist();
//        
//        
////        List<Products> foodproductlist = service.geFoodProductlist();
////        List<Products> electtrickproductlist = service.getElectricityProductlist();
////        List<Products> garments = service.getGarmentsList();
////        List<Products> furniture = service.getFurnitureProductlist();
////        List<Products> fashion = service.getFashionList();
////        List<Products> vehicles = service.getVehiclesList();
////        List<Products> juelary = service.getJewelProductlist();
//
//        
//        List<Cart> cartlist3 = service.getCartList(id);
//       
//       
//        modelmap.addAttribute("foodproductlist", allproductlist);
////        modelmap.addAttribute("foodproductlist", foodproductlist);
////        modelmap.addAttribute("electtrickproductlist", electtrickproductlist);
////        modelmap.addAttribute("garments", garments);
////        modelmap.addAttribute("furniture", furniture);
////        modelmap.addAttribute("fashion", fashion);
////        modelmap.addAttribute("vehicles", vehicles);
////        modelmap.addAttribute("juelary", juelary);
////        
////        modelmap.addAttribute("juelary", juelary);
////        
//        
//        modelmap.addAttribute("cartlist", cartlist3);
//        return "index";
//    }
    
     
     
     
    @RequestMapping("/")
    public String welcome(ModelMap modelmap) {
        user=service.getUserbyId(id);
        
        int id=user.getId();

        List<Cart> cartlist3 = service.getCartList(id);
                  
        
        int total=12; 
        int pageid=1;
       
        String name="viewemp";
        List<Products> list=service.getProductsByPage(pageid,total); 
        
        modelmap.addAttribute("foodproductlist", list);
        
        modelmap.addAttribute("cartlist", cartlist3);
        modelmap.addAttribute("paramitar", name);
        
        return "index";    
     
      
    }

    
    
     @RequestMapping(value="/viewemp")    
    public String edit(int pageid,Model modelmap){    
        int total=12;  
         String name="viewemp";
        if(pageid==1){}    
        else{    
            pageid=(pageid-1)*total+1;    
        }    
        System.out.println(pageid);  
        List<Products> list=service.getProductsByPage(pageid,total); 
        
        modelmap.addAttribute("foodproductlist", list);
         modelmap.addAttribute("paramitar", name);
        return "index";    
    }    
    
    
    
    
    
    
    
    
    
    
    
    
 
    @RequestMapping(value="/addajax" )
    @ResponseBody
    public String addToCart_ajax(@RequestParam Integer id) {

        
        try {
        
        Products pro=service.geProductlist(id);
      
    
        Cart cart = new Cart();
           
           
        cart.setProduct_id(pro.getId());
        cart.setVendormail(pro.getVendormail());
        cart.setCoustomerId(user.getId());
        cart.setProduct_name(pro.getProduct_name());
        cart.setImage(pro.getImage());        
        cart.setCategory(pro.getCategory());
        cart.setCompany(pro.getCompany());
        cart.setNew_price(pro.getNew_price());
        cart.setCost_price(pro.getCost_price());
        cart.setP_id(pro.getProduct_id());
        
        
   
    System.out.println(cart.getId()); 
    System.out.println(cart.getVendormail()+" cart Imageeeeeeeeeeeeeeeee"); 
    System.out.println(cart.getCoustomerId()+" cart Imageeeeeeeeeeeeeeeee"); 
    System.out.println(cart.getProduct_name()+" cart Imageeeeeeeeeeeeeeeee"); 
    System.out.println(cart.getCategory()+"cart Imageeeeeeeeeeeeeeeee"); 
    System.out.println(cart.getCompany()+"cart Imageeeeeeeeeeeeeeeee"); 
    System.out.println(cart.getNew_price()+"cart Imageeeeeeeeeeeeeeeee"); 
    System.out.println(cart.getCost_price()+"cart Imageeeeeeeeeeeeeeeee"); 
    System.out.println(cart.getCost_price()+"cart Imageeeeeeeeeeeeeeeee"); 
    
    
       service.addCart(cart);
       
       
       
       
            return "massege: Success";
        } catch (Exception e) {
            printStackTrace();
            return "massege: Something is rong.";
        }
        
 
        
    }
    
    
    
     @RequestMapping(value="/setcolor")
    @ResponseBody
    public String setColor(@RequestParam Integer id,@RequestParam String color) {

        
        try {
           service.setcolor(id,color);
   
        
            return "massege: Success";
        } catch (Exception e) {
            printStackTrace();
            return "massege: Something is rong.";
        }
        

    }
    
    
    
        
     @RequestMapping(value="/setsize")
    @ResponseBody
    public String setSize(@RequestParam Integer id,@RequestParam String size) {

        
        try {
           service.setSize(id,size);
   
        
            return "\"massege\": \"Success\"";
        } catch (Exception e) {
            printStackTrace();
            return "massege: Something is rong.";
        }
        

    }
    
    
     @RequestMapping(value="/setqua")
    @ResponseBody
    public String setquntity(@RequestParam Integer id,@RequestParam Integer qua) {

        
        try {
           service.setQuantity(id,qua);
   
        
            return "massege: Success";
        } catch (Exception e) {
            printStackTrace();
            return "massege: Something is rong.";
        }
        

    }
    
//    @ModelAttribute("cart") Cart cart
    
// @RequestMapping( "/addtoCart")
//    public String addtoCart(ModelMap modelmape,HttpServletRequest rq) {
//        String massege = "";
//        
//        String id2=rq.getParameter("cartid");
//        System.out.println(id2);
//        System.out.println(id2);
//        System.out.println(id2);
//        int id3=Integer.parseInt(id2);
//        
//        Products pro=service.geProductlist(id3);
//        System.out.println(user.getFirstname());
//        System.out.println(pro.getProduct_name());
//        
//        Cart cart = new Cart();
//        
//       
//        cart.setProduct_id(pro.getId());
//        cart.setCoustomerId(user.getId());
//        cart.setProduct_name(pro.getProduct_name());
//        cart.setImage(pro.getImage());        
//        cart.setCategory(pro.getCategory());
//        cart.setCompany(pro.getCompany());
//        cart.setNew_price(pro.getNew_price());
//
//        
//        
//        boolean stuse = service.addCart(cart);
//        List<Products> foodproductlist = service.geFoodProductlist();
//        List<FoodProducts> electtrickproductlist = service.getElectricityProductlist();
//        System.out.println(foodproductlist.size());
//        System.out.println(electtrickproductlist.size());
//        int item1=20;
//        modelmape.addAttribute("foodproductlist", foodproductlist);
//        modelmape.addAttribute("electtrickproductlist", electtrickproductlist);
//
//return "index";
//    }
    
    
    
//     @RequestMapping("/index")
//    public String goindex(ModelMap modelmap) {
//        user=service.getUserbyId(id);
//         List<Products> foodproductlist = service.geFoodProductlist();
//        List<Products> electtrickproductlist = service.getElectricityProductlist();
//        List<Cart> cartlist2 = service.getCartList(user.getId());
//        System.out.println(foodproductlist.size());
//        System.out.println(electtrickproductlist.size());
//        int item1=20;
//        modelmap.addAttribute("foodproductlist", foodproductlist);
//        modelmap.addAttribute("electtrickproductlist", electtrickproductlist);
//        modelmap.addAttribute("emp", item1);     
//        modelmap.addAttribute("cartlist", cartlist2);
//        int size=cartlist2.size(); 
//        modelmap.addAttribute("size", size);
//       
//        return "index";
//    }

    @RequestMapping("/index")
    public String goindex(ModelMap modelmap) {
          user=service.getUserbyId(id);
        
        int id=user.getId();

        List<Cart> cartlist3 = service.getCartList(id);
                  
        
        int total=12; 
        int pageid=1;
       
        String name="viewemp";
        List<Products> list=service.getProductsByPage(pageid,total); 
        
        modelmap.addAttribute("foodproductlist", list);
        
        modelmap.addAttribute("cartlist", cartlist3);
        modelmap.addAttribute("paramitar", name);
        
        return "index";    
     
    }
    
    
    
         @RequestMapping("/deleteCart")
    public String deleteFormCart(ModelMap modelmape,HttpServletRequest rq) {
        
        
        String id2=rq.getParameter("id");      
        int id3=Integer.parseInt(id2);
             System.out.println(id3+"Delete queri Id");
             System.out.println(id3+"Delete queri Id");
             System.out.println(id3+"Delete queri Id");
             System.out.println(id3+"Delete queri Id");
             System.out.println(id3+"Delete queri Id");
          
       
        boolean stuse = service.deleteCart(id3);
        
              
        List<Cart> cartlist = service.getCartList(user.getId());
    
       
        System.out.println(cartlist.size());
        modelmape.addAttribute("cartlist", cartlist);
            
        return "shopping-cart";  
    }
    
    @RequestMapping("/404")
    public String go404(Cart cart, ModelMap modelmap) {
        
//        
//        List<Cart> cartlist = service.getCartList();
//        cartlist.size();
//        System.out.println(cartlist.size());
//        modelmap.addAttribute("cartlist", cartlist);
            
        return "404";
    }
    
    
    @RequestMapping("/blog-full-width")
    public String goblog() {
        return "blog-full-width";
    }
    
    
    @RequestMapping("/blog-masonry")
    public String goblogMasonry() {
        return "blog-masonry";
    }
    
    
    @RequestMapping("/checkout")
    public String gocheckout() {
        return "checkout";
    }
    
    
    @RequestMapping("/price-table-one")
    public String gopriceTableOne() {
        return "price-table-one";
    }
    
    
    @RequestMapping("/contact")
    public String gocontact() {
        return "contact";
    }
    
    
     
    @RequestMapping("/shipment")
    public String goShipment() {
        return "/headers/shipment";
    }
    
    
    
    @RequestMapping("/footer-one")
    public String gofooter1() {
        return "footer-one";
    }
    
    
    @RequestMapping("/footer-three")
    public String gofooter3() {
        return "footer-three";
    }
    
    
    @RequestMapping("/footer-two")
    public String gofooter2() {
        return "footer-two";
    }
    
    
    @RequestMapping("/index-2")
    public String goindex2() {
        return "index-2";
    }
    
    
    @RequestMapping("/index-3")
    public String goindex3() {
        return "index-3";
    }
    
    
    
     @RequestMapping("/price-table-two")
    public String gopriceTableTwo() {
        return "price-table-two";
    }
    
    
     @RequestMapping("/shop")
    public String goshop() {
        return "shop";
    }
    
    
     @RequestMapping("/shopping-cart")
    public String goshoppingCart(ModelMap modelmap) {
           
        List<Cart> cartlist = service.getCartList(user.getId());
    
       
        System.out.println(cartlist.size());
    
        
        
        
        
        
        
        modelmap.addAttribute("cartlist", cartlist);
            
        return "shopping-cart";
    }
    
    
    
    
            
     @RequestMapping(value="/shipment_form", method = RequestMethod.POST)
    public String addUser(ModelMap model,@ModelAttribute("shipmentI") Shipment shipment) throws Exception
    {
    //Employee emp=new Employee();
       // System.out.println(employee);
   
      boolean stuse = service.addshipment(shipment);
    
    
       
        return "datasaved";
//        System.out.println(clint);
//     return "list_emp";
     
    }
    
    @RequestMapping(value = "/add_order", method = RequestMethod.POST)
    public String addOrder(@ModelAttribute("orders") Orders orders  , ModelMap model) throws Exception {
          int id1;
        id1 = user.getId();
        
          System.out.println(id1+"Method add_Order called..");
         
        
        List<Cart> cartlist = service.getCartList(id1);
        System.out.println( cartlist.get(1).getCost_price());
         
        boolean status = service.addOrders(orders,id1,cartlist);

        
        if(status){
            
         boolean stuse = service.deleteUserCart(id1); 
        }
//         Orders order=service.getMaxOrder();
         List<Orders> ordertlist = service.getOrderList(id1);
        
         model.addAttribute("ordertlist", ordertlist);
        
        return "datasaved";
    }
    
    
    
    
    
    
    
    
    
             
     @RequestMapping(value="/datasaved")
    public String datasaved(ModelMap model,@ModelAttribute("shipmentI") Shipment shipment) throws Exception
    {
    
       
        return "datasaved";

    }
    
    
    
    
    
    
    
    
    
    
       @RequestMapping(value="/login", method = RequestMethod.GET)
    public String gologin() {
        return "signin";
    }
    
     @RequestMapping("/signin")
    public String gosignin() {
        return "signin";
    }
    
    
     @RequestMapping("/signup")
    public String gosignup() {
        return "signup";
    }
    
    
     @RequestMapping("/single-post-v2")
    public String gosinglePostV2() {
        return "single-post-v2";
    }
    
    
     @RequestMapping("/single-post")
    public String gosinglePost() {
        return "single-post";
    }
    
    
     @RequestMapping(value = "/single-product" , method = RequestMethod.GET)
    public String gosingleProduct(HttpServletRequest rq,ModelMap modelmap) throws Exception   
    {   
      String id2=rq.getParameter("id");     
        int id=Integer.parseInt(id2);
          System.out.println(id+"ddddddddddddddddddddddddddd");
        System.out.println(id+"ddddddddddddddddddddddddddd");
        System.out.println(id+"ddddddddddddddddddddddddddd");
        Products produc = service.getProduct(id);
        System.out.println(produc.getProduct_name());
        System.out.println(produc.getProduct_name());
        System.out.println(produc.getProduct_name());
        
        modelmap.addAttribute("product", produc);

        return "single-product";
    }
        
    
    
    
    
    @RequestMapping("/about")
    public String goabout10() {
        return "about";
    }
    
    
    
    @RequestMapping("/wishlist")
    public String gowishlist() {
        return "wishlist";
    }
    
    
    
    @RequestMapping("/blog")
    public String addFrom3() {
        return "blog";
    }

    
     public String name3=null;
     @RequestMapping(value="/search")    
    public String search(int pageid,Model modelmap,String name){    
        int total=12;    
        String nameparam ="search";
         if (name!=null) {
          name3=name; 
         }

 
        if(pageid==1){}    
        else{    
            pageid=(pageid-1)*total+1;    
        }    
        System.out.println(pageid);  
//         List<Products> list=service.getProductsByPage(pageid,total);
        List<Products> list=service.getProductsBySearchlist(name3,pageid,total); 
//        List<Products> list=service.getProductsBySearch(name); 
        
        modelmap.addAttribute("foodproductlist", list);
        modelmap.addAttribute("paramitar", nameparam);
        modelmap.addAttribute("searchtext", name3);
        return "index";    
    }    
    
    
    
    
}
