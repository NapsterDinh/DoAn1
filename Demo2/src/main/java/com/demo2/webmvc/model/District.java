/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo2.webmvc.model;

/**
 *
 * @author Napster
 */
public class District {
    private int id;
    private int province_id;
    private String name;

    public District() {
    }

    public District(int id, int province_id, String name) {
        this.id = id;
        this.province_id = province_id;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public int getProvince_id() {
        return province_id;
    }

    public String getName() {
        return name;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setProvince_id(int province_id) {
        this.province_id = province_id;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    
    
}
