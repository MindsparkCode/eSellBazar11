/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.model;

import java.util.Date;

/**
 *
 * @author Saiful
 */
public class Products {
    
    private int id;
    private String product_id,product_name,image,category,
            description,cash_memo,company,stock_ditails,vendormail;
    private double old_price;
    private double new_price;
    private double cost_price;
    private double quantity;
    private Date date;
    private String time;

    public Products(String product_id, String product_name, String image, String category, String description, String cash_memo, String company, String stock_ditails, String vendormail, double old_price, double new_price, double cost_price, double quantity, Date date, String time) {
        this.product_id = product_id;
        this.product_name = product_name;
        this.image = image;
        this.category = category;
        this.description = description;
        this.cash_memo = cash_memo;
        this.company = company;
        this.stock_ditails = stock_ditails;
        this.vendormail = vendormail;
        this.old_price = old_price;
        this.new_price = new_price;
        this.cost_price = cost_price;
        this.quantity = quantity;
        this.date = date;
        this.time = time;
    }

    public Products() {
    }

    
    
    public String getVendormail() {
        return vendormail;
    }

    public void setVendormail(String vendormail) {
        this.vendormail = vendormail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public String getProduct_id() {
        return product_id;
    }

    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCash_memo() {
        return cash_memo;
    }

    public void setCash_memo(String cash_memo) {
        this.cash_memo = cash_memo;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getStock_ditails() {
        return stock_ditails;
    }

    public void setStock_ditails(String stock_ditails) {
        this.stock_ditails = stock_ditails;
    }

    public double getOld_price() {
        return old_price;
    }

    public void setOld_price(double old_price) {
        this.old_price = old_price;
    }

    public double getNew_price() {
        return new_price;
    }

    public void setNew_price(double new_price) {
        this.new_price = new_price;
    }

    public double getCost_price() {
        return cost_price;
    }

    public void setCost_price(double cost_price) {
        this.cost_price = cost_price;
    }

    public double getQuantity() {
        return quantity;
    }

    public void setQuantity(double quantity) {
        this.quantity = quantity;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    
    
}
