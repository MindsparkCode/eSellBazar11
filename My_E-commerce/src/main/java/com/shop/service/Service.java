/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.service;

import com.shop.model.Cart;
import com.shop.model.FoodProducts;
import com.shop.model.Orders;
import com.shop.model.Products;
import com.shop.model.Shipment;
import com.shop.model.Users;
import com.shop.repository.RepositoryImp;
import java.util.LinkedList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Saiful
 */
@org.springframework.stereotype.Service
public class Service {

    @Autowired
    RepositoryImp repository;

    public Users getUserbyId(int i) {
        return repository.getUserbyId(i);
    }

    public LinkedList<Cart> cartList = new LinkedList<Cart>();

    public List<Products> geFoodProductlist() {
        return repository.geFoodProductlist();
    }

    public List<Products> getElectricityProductlist() {
        return repository.getElectricityProductlist();
    }

//    public Products getProduct(String id) {
//             return repository.getProduct(id); 
//    }
    public boolean addCart(Cart cart) {

        return repository.addCart(cart);
    }


    public Products geProductlist(int id) {
        return repository.geProductlist(id);

    }

    public List<Cart> getCartList(int id) {
        return repository.getCartList(id);
    }

    public boolean addOrders(Orders orders, int id, List<Cart> cartlist) {
        return repository.addOrders(orders, id, cartlist);
    }

    public Products getProduct(int id) {
        return repository.getProduct(id);
    }

    public boolean deleteCart(int id3) {
        return repository.deleteCart(id3);
    }

    public boolean addshipment(Shipment shipment) {
        return repository.addshipment(shipment);

    }

    public boolean deleteUserCart(int id) {
        return repository.deleteUserCart(id);
    }


    public List<Orders> getOrderList(int id) {
      return repository.getOrderList(id);
    }

    public void setcolor(Integer id, String color) {
     repository.setcolor(id,color);

    }

    public void setSize(Integer id, String size) {
           repository.setSize(id,size); 
    }

    public void setQuantity(Integer id, Integer qua) {
           repository.setSize(id,qua); 
    }

    public List<Products> getFurnitureProductlist() {
        return repository.getFurnitureProductlist();
    }

    public List<Products> getFashionList() {
 return repository.getFashionList();
    }

    public List<Products> getVehiclesList() {
 return repository.getVehiclesList();   
    }

    public List<Products> getJewelProductlist() {
 return repository.getJewelProductlist();  
    }

    public List<Products> getGarmentsList() {
       return repository.getGarmentsList();  
    }


    public List<Products> geAllProductlist() {
     return repository.getAllProductlist();  
    }

    public List<Products> getProductsByPage(int pageid, int total) {
        return repository.getProductsByPage(pageid,total);  
    }

//    public List<Products> getProductsBySearch(String name) {
//        return repository.getProductsBySearch(name); 
//    }

    public List<Products> getProductsBySearchlist(String name, int pageid, int total) {
         return repository.getProductsBySearchlist(name,pageid,total);  
    }

}
