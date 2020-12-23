/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo2.webmvc.model;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author Napster
 */
public class Product implements Serializable{
    private static final long serialVersionUID = -6500665823330706018L;
    
    public Product() {
        super();
    }
    
   private int id_Product;
   private int id_Category;
   private String name_product;
   private String description;
   private int amount;
   private float price;
   private int state;
   private Date date;
   private String image;
   
    public int getId_Product() {
        return id_Product;
    }

    public int getId_Category() {
        return id_Category;
    }

    public String getName_product() {
        return name_product;
    }

    public String getDescription() {
        return description;
    }

    public int getAmount() {
        return amount;
    }

    public float getPrice() {
        return price;
    }

    public int getState() {
        return state;
    }

    public Date getDate() {
        return date;
    }

    public String getImage() {
        return image;
    }

    public void setId_Product(int id_Product) {
        this.id_Product = id_Product;
    }

    public void setId_Category(int id_Category) {
        this.id_Category = id_Category;
    }

    public void setName_product(String name_product) {
        this.name_product = name_product;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public void setState(int state) {
        this.state = state;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setImage(String image) {
        this.image = image;
    }
 
   
    
}
