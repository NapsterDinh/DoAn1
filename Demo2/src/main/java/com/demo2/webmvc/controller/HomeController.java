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
 * @author Napster
 */
@WebServlet(urlPatterns = { "/home"})
public class HomeController extends HttpServlet {
   private static final long serialVersionUID = 1L;
 
   public HomeController() {
       super();
   }
 
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
 
       try {
           HttpSession session = request.getSession();
           // Kiểm tra người dùng đã đăng nhập (login) chưa.
           UserAccount loginedUser = MyUtils.getLoginedUser(session);
           Connection conn = MySQLConnUtils.getMySQLConnection();
           session.setAttribute("count_wishlist", DBUtils.Get_Count_Wishlist(conn, loginedUser.getUsername()));
           // Nếu đã đăng nhập (login).
           if (loginedUser.getId_user()!= 0) {
               if(loginedUser.getPermission() ==3 )
               {
                   //kiểm tra nó là ai, nếu là user qua index.jsp, nếu là admin qua admin.jsp
                   if(loginedUser.getId_token()!=null)
                   {
                       //fbUser
                       session.removeAttribute("style_avatar");
                       
                   }
                   else{
                       session.setAttribute("style_avatar", "display: none;");
                   }
                   session.setAttribute("style_profile", "inline-block");
                   session.setAttribute("style_login", "none");
                   // Redirect (Chuyển hướng) tới trang login.
                   // Nếu người dùng chưa login thì forward (chuyển tiếp) tới trang index.jsp
                   RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/index.jsp");
                   dispatcher.forward(request, response);
               }
               else
               {
                   //chuyển qua trang admin
                   // Nếu người dùng chưa login thì forward (chuyển tiếp) tới trang index.jsp
                   RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/test2.jsp");
                   dispatcher.forward(request, response);
               }
               
           }
           else
           {
               session.setAttribute("style_profile", "none");
               session.setAttribute("style_login", "inline-block");
               // Nếu người dùng chưa login thì forward (chuyển tiếp) tới trang index.jsp
               RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/index.jsp");
               dispatcher.forward(request, response);
           }
           // Lưu thông tin vào request attribute trước khi forward (chuyển tiếp).
           //request.setAttribute("user", loginedUser);
       } catch (ClassNotFoundException ex) {
           Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
       } catch (SQLException ex) {
           Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
       }
   }
 
   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       doGet(request, response);
   }
 
}