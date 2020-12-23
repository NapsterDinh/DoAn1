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
public class Town {
    private int id;
    private int id_Province;
    private int id_District;
    private String name;

    public Town() {
    }

    public Town(int id, int id_Province, int id_District, String name) {
        this.id = id;
        this.id_Province = id_Province;
        this.id_District = id_District;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public int getId_Province() {
        return id_Province;
    }

    public int getId_District() {
        return id_District;
    }

    public String getName() {
        return name;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setId_Province(int id_Province) {
        this.id_Province = id_Province;
    }

    public void setId_District(int id_District) {
        this.id_District = id_District;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    
}
