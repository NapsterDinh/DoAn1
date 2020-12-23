/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo2.webmvc.controller;


import com.demo2.webmvc.conn.MySQLConnUtils;
import com.demo2.webmvc.model.District;
import com.demo2.webmvc.model.Province;
import com.demo2.webmvc.model.Town;
import com.demo2.webmvc.ulti.DBUtils;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/ProvinceController"})
public class ProvinceController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            try {
                
            Connection conn = MySQLConnUtils.getMySQLConnection();
            
            String op = request.getParameter("operation");
            
            if (op.equals("province")) {
                List<Province> plist = DBUtils.Load_Province(conn);
                Gson json = new Gson();
                String provinceList = json.toJson(plist);
                response.getWriter().write(provinceList);
            }

            if (op.equals("district")) {
                int id = Integer.parseInt(request.getParameter("id"));
                List<District> dlist = DBUtils.Load_District_ByProvinceId(conn, id);
                Gson json = new Gson();
                String districtList = json.toJson(dlist);
                response.getWriter().write(districtList);
            }

            if (op.equals("town")) {
                int id = Integer.parseInt(request.getParameter("id"));
                List<Town> tlist = DBUtils.Load_Town_ByDistrictId(conn, id);
                Gson json = new Gson();
                String townList = json.toJson(tlist);
                response.getWriter().write(townList);
            }
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(ProvinceController.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(ProvinceController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}

  