/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.repository;

import com.shop.model.Emp;
import com.shop.model.MonthlySeal;
import com.shop.model.Orders;
import com.shop.model.Products;
import com.shop.model.UserMap;
import com.shop.model.Users;
import com.shop.model.Vendor;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Saiful
 */
@org.springframework.stereotype.Repository
public class DeshboardRepositoryImpl {

    @Autowired
    private JdbcTemplate jdbctemplate;

    public List<Orders> getProductlist() {
        List<Orders> orderList = new ArrayList();
        String sql = "SELECT id,coustomerId,shipment,subtotal,vat,total,\n"
                + " payment_method,district,address,thana,postcode,contact,\n"
                + " status,date(date_time) as date,time(date_time) time FROM orders where status='Orderd';";
        orderList = jdbctemplate.query(sql, new BeanPropertyRowMapper(Orders.class));

        return orderList;
    }

    public double getlastWeektotal() {

        String sql = " SELECT SUM(total) from orders\n"
                + "WHERE MONTH(date_time) = MONTH(CURRENT_TIMESTAMP) AND YEAR(date_time) = YEAR(CURRENT_TIMESTAMP);";
//            select  SUM(total) from orders where WEEK(CURDATE());
        double total = jdbctemplate.queryForObject(sql, double.class);

        return total;
    }

    public double getlastWeekpurchase() {
        String sql = " SELECT SUM(total_costprice) from orderditais\n"
                + "WHERE MONTH(date_time) = MONTH(CURRENT_TIMESTAMP) AND YEAR(date_time) = YEAR(CURRENT_TIMESTAMP);";
//            select  SUM(total) from orders where WEEK(CURDATE());
        double total = jdbctemplate.queryForObject(sql, double.class);

        return total;
    }

    public double getlastmonthOrders() {
String sql = " SELECT count(total_costprice) from orderditais\n"
                + "WHERE MONTH(date_time) = MONTH(CURRENT_TIMESTAMP) AND YEAR(date_time) = YEAR(CURRENT_TIMESTAMP);";
//            select  SUM(total) from orders where WEEK(CURDATE());
        double total = jdbctemplate.queryForObject(sql, double.class);

        return total;
    }

    public int gettotalUsers() {
String sql = "SELECT count(id) from users;";
//            select  SUM(total) from orders where WEEK(CURDATE());
        int total = jdbctemplate.queryForObject(sql, Integer.class);

        return total;
    }

    public List<UserMap> getusermap() {

 List<UserMap> districtList = new ArrayList();
        String sql = "SELECT DISTINCT(district) as district FROM users;";
        districtList = jdbctemplate.query(sql, new BeanPropertyRowMapper(UserMap.class));
        
 List<UserMap> districtListfinal = new ArrayList();
 
         for (int i = 0; i < districtList.size(); i++) {
            
            String sql2 = "SELECT district, count(district) as totaluser FROM users where district='"+districtList.get(i).getDistrict()+"'";
            UserMap usermap=(UserMap) jdbctemplate.queryForObject(sql2, new BeanPropertyRowMapper(UserMap.class));
            districtListfinal.add(usermap);

        }
        
         
        return districtListfinal;

    }

    public List<MonthlySeal> getMonthdate() {
        
 List<MonthlySeal> districtList = new ArrayList();
        String sql = "select DISTINCT(MONTHNAME(date_time)) as month from orders where YEAR(date_time)=YEAR(CURDATE()) ORDER BY date_time;";
        districtList = jdbctemplate.query(sql, new BeanPropertyRowMapper(MonthlySeal.class));
        
 List<MonthlySeal> districtListfinal = new ArrayList();
 
         for (int i = 0; i < districtList.size(); i++) {
            
            String sql2 = "select SUBSTRING(MONTHNAME(date_time),1,3) as month , sum(total) as total from orders where MONTHNAME(date_time)='"+districtList.get(i).getMonth()+"' and YEAR(date_time)=2020;";
            MonthlySeal monthlySeal=(MonthlySeal) jdbctemplate.queryForObject(sql2, new BeanPropertyRowMapper(MonthlySeal.class));
            districtListfinal.add(monthlySeal);

        }
        
         
        return districtListfinal;

    }

//    public Users getSingleuser() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }

    public Users getUserditails(int id) {
       String sqlu = "select * from users where id=" + id + ";";
     Users systemUser2 = (Users) jdbctemplate.queryForObject(sqlu, new BeanPropertyRowMapper(Users.class));

        return systemUser2;   
    }

    public List<Users> getUserlist() {
       List<Users> userlist ;
        String sql = "select * from users";
        userlist = jdbctemplate.query(sql, new BeanPropertyRowMapper(Users.class));
        return userlist;
    }

    public List<Emp> getEmplist() {
        List<Emp> emplist ;
        String sql2 = "select * from emp";
        emplist = jdbctemplate.query(sql2, new BeanPropertyRowMapper(Emp.class));
        return emplist;
    }

    public List<Vendor> getVendorIlist() {
         List<Vendor> vendorlist ;
        String sql2 = "select * from vendor";
        vendorlist = jdbctemplate.query(sql2, new BeanPropertyRowMapper(Vendor.class));
        return vendorlist;
    }

    public List<Products> getProductslist() {
        List<Products> vendorlist ;
        String sql2 = "select * from products";
        vendorlist = jdbctemplate.query(sql2, new BeanPropertyRowMapper(Products.class));
        return vendorlist;
    }

}
