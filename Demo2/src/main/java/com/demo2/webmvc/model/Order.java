/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo2.webmvc.model;

import java.sql.Date;
import java.util.List;

/**
 *
 * @author Napster
 */
public class Order {
    private int id_order;
    private int id_user;
    private String address;
    private String province;
    private String district;
    private String town;
    private Date date_order;
    private Date date_finish;
    private int state_order;
    private float total;
    private String feedback;
    private List<OrderDetail> list_order_detail;

    public Order() {
    }

    public int getId_order() {
        return id_order;
    }

    public int getId_user() {
        return id_user;
    }

    public String getAddress() {
        return address;
    }

    public String getProvince() {
        return province;
    }

    public String getDistrict() {
        return district;
    }

    public String getTown() {
        return town;
    }

    public Date getDate_order() {
        return date_order;
    }

    public Date getDate_finish() {
        return date_finish;
    }

    public int getState_order() {
        return state_order;
    }

    public float getTotal() {
        return total;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setId_order(int id_order) {
        this.id_order = id_order;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public void setTown(String town) {
        this.town = town;
    }

    public void setDate_order(Date date_order) {
        this.date_order = date_order;
    }

    public void setDate_finish(Date date_finish) {
        this.date_finish = date_finish;
    }

    public void setState_order(int state_order) {
        this.state_order = state_order;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public List<OrderDetail> getList_order_detail() {
        return list_order_detail;
    }

    public void setList_order_detail(List<OrderDetail> list_order_detail) {
        this.list_order_detail = list_order_detail;
    }
    
    
}
