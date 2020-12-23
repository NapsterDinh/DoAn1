/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo2.webmvc.model;

import java.io.Serializable;

/**
 *
 * @author Napster
 */
public class OrderDetail implements Serializable{
    private static final long serialVersionUID = 1L;
    
    public OrderDetail() {
        super();
    }
    private int id_order_detail;
    private int id_order;
    private int id_product;
    private int amount;
    private float price;
    private int id_sale_off;
    private Product product;

    

    public int getId_order_detail() {
        return id_order_detail;
    }

    public int getId_order() {
        return id_order;
    }

    public int getId_product() {
        return id_product;
    }

    public int getAmount() {
        return amount;
    }

    public float getPrice() {
        return price;
    }

    public int getId_sale_off() {
        return id_sale_off;
    }

    
    public Product getProduct() {
        return product;
    }

    public void setId_order_detail(int id_order_detail) {
        this.id_order_detail = id_order_detail;
    }

    public void setId_order(int id_order) {
        this.id_order = id_order;
    }

    public void setId_product(int id_product) {
        this.id_product = id_product;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public void setId_sale_off(int id_sale_off) {
        this.id_sale_off = id_sale_off;
    }

    
    public void setProduct(Product product) {
        this.product = product;
    }
    
    
    
}
