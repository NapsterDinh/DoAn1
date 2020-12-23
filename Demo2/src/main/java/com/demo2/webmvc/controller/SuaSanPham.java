/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo2.webmvc.controller;

import com.demo2.webmvc.conn.MySQLConnUtils;
import com.demo2.webmvc.model.Product;
import com.demo2.webmvc.model.UserAccount;
import com.demo2.webmvc.ulti.DBUtils;
import com.demo2.webmvc.ulti.MyUtils;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PC
 */
@WebServlet(urlPatterns = {"/SuaSanPham"})
public class SuaSanPham extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final long serialVersionUID = 1L;
    
    public SuaSanPham()
    {
        super();
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        // Kiểm tra người dùng đã đăng nhập (login) chưa.
        UserAccount loginedUser = MyUtils.getLoginedUser(session);
                 //load sản phẩm lên
        Connection conn;
        try {
            conn = MySQLConnUtils.getMySQLConnection();
            Product pr = DBUtils.Load_product_By_Id(conn, Integer.parseInt(request.getParameter("pr_id")));
            request.setAttribute("Product", pr);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ShopController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ShopController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/suasanpham.jsp");
        
        dispatcher.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("pr_id"));
        String name = request.getParameter("nameProduct").trim();
        int cagetory = Integer.parseInt(request.getParameter("cagetoryProduct"));
        float price = Float.parseFloat(request.getParameter("priceProduct"));
        int amount = Integer.parseInt(request.getParameter("amountProduct"));
        String avatar = request.getParameter("profile_avatar").trim();
        String description = request.getParameter("descriptionProduct").trim();
        
        if(avatar == "")
        {
            try {
            Connection conn = MySQLConnUtils.getMySQLConnection();
            if(avatar != null)
            {
                
            }
            if (!DBUtils.UpdateProduct(conn, id, cagetory, name, description, amount, price)) {
                RequestDispatcher dispatcher //
                        = this.getServletContext().getRequestDispatcher("/SuaSanPham");
                dispatcher.forward(request, response);
            } else {
                RequestDispatcher dispatcher //
                        = this.getServletContext().getRequestDispatcher("/DSSP");
                dispatcher.forward(request, response);

            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
        }
        }
        else
        {
            try {
            Connection conn = MySQLConnUtils.getMySQLConnection();
            if(avatar != null)
            {
                
            }
            if (!DBUtils.UpdateProduct_Image(conn, id, cagetory, name, description, amount, price, avatar)) {
                RequestDispatcher dispatcher //
                        = this.getServletContext().getRequestDispatcher("/SuaSanPham");
                dispatcher.forward(request, response);
            } else {
                RequestDispatcher dispatcher //
                        = this.getServletContext().getRequestDispatcher("/DSSP");
                dispatcher.forward(request, response);

            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
        }
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
