/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.service;

import com.shop.model.Emp;
import com.shop.model.MonthlySeal;
import com.shop.model.Orders;
import com.shop.model.Products;
import com.shop.model.UserMap;
import com.shop.model.Users;
import com.shop.model.Vendor;
import com.shop.repository.DeshboardRepositoryImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Saiful
 */
@Service
public class DeshboardServiceImpl {
    @Autowired
    DeshboardRepositoryImpl deshboardRepositoryImpl;

    public List<Orders> getProductlist() {

return deshboardRepositoryImpl.getProductlist();
    }

    public double getlastWeektotal() {
      return deshboardRepositoryImpl.getlastWeektotal(); 
    }

    public double getlastWeekpurchase() {
            return deshboardRepositoryImpl.getlastWeekpurchase();     }

    public double getlastmonthOrders() {
            return deshboardRepositoryImpl.getlastmonthOrders();        }

    public int gettotalUsers() {
                  return deshboardRepositoryImpl.gettotalUsers();      }

    public List<UserMap> getusermap() {
         return deshboardRepositoryImpl.getusermap();
    }

    public List<MonthlySeal> getMonthdate() {
          return deshboardRepositoryImpl.getMonthdate();
    }

//    public Users getSingleuser() {
//          return deshboardRepositoryImpl.getSingleuser();    }

    public Users getUserditails(int id) {
          return deshboardRepositoryImpl.getUserditails(id);    }

    public List<Users> getUserlist() {
       return deshboardRepositoryImpl.getUserlist();  
    }

    public List<Emp> getEmplist() {
        return deshboardRepositoryImpl.getEmplist();   
    }

    public List<Vendor> getVendorIlist() {
        return deshboardRepositoryImpl.getVendorIlist();   
    }

    public List<Products> getProductslist() {
         return deshboardRepositoryImpl.getProductslist();   
    }
}
