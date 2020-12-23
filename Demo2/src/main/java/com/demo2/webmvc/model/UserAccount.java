/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo2.webmvc.model;


import java.io.Serializable;
import java.sql.Date;
import java.util.List;

/**
 *
 * @author Napster
 */
public class UserAccount implements Serializable{
    private static final long serialVersionUID = -6500665823330706018L;
    
    public UserAccount() {
        super();
    }
    
        private int id_user;
        private String name_user;
        private String email;
        private String avatar;
        private String phone;
        private String sex;
        private Date birth;
        private String address;
        private String province;
        private String name_province;
        private String district;
        private String town;
        private String username;
        private String pass;
        private Date date_in;
        private String id_token;
        private String token;
        private String hash;
        private boolean state;
        private int permission;
        private List<String> list_action;

    public List<String> getList_action() {
        return list_action;
    }

    public void setList_action(List<String> list_action) {
        this.list_action = list_action;
    }
        

    public UserAccount(String email, String phone, String username, String pass) {
        this.email = email;
        this.phone = phone;
        this.username = username;
        this.pass = pass;
    }
    
    
    public String getName_province() {
        return name_province;
    }

    public void setName_province(String name_province) {
        this.name_province = name_province;
    }

    public int getId_user() {
        return id_user;
    }

    public String getName_user() {
        return name_user;
    }

    public String getEmail() {
        return email;
    }

    public String getAvatar() {
        return avatar;
    }

    public String getPhone() {
        return phone;
    }

    public String getSex() {
        return sex;
    }

    public Date getBirth() {
        return birth;
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

    public String getUsername() {
        return username;
    }

    public String getPass() {
        return pass;
    }

    public Date getDate_in() {
        return date_in;
    }

    public String getId_token() {
        return id_token;
    }

    public String getToken() {
        return token;
    }

    public String getHash() {
        return hash;
    }

    public boolean getState() {
        return state;
    }

    public int getPermission() {
        return permission;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public void setName_user(String name_user) {
        this.name_user = name_user;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
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

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public void setDate_in(Date date_in) {
        this.date_in = date_in;
    }

    public void setId_token(String id_token) {
        this.id_token = id_token;
    }

    public void setToken(String tokenn) {
        this.token = tokenn;
    }

    public void setHash(String hash) {
        this.hash = hash;
    }

    public void setState(boolean state) {
        this.state = state;
    }

    public void setPermission(int permission) {
        this.permission = permission;
    }
           

    
    

}
