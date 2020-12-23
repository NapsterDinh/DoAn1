/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo2.webmvc.controller;

import com.demo2.webmvc.ulti.DBUtils;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.restfb.types.User;
import com.demo2.webmvc.accessfb.RestFB;
import com.demo2.webmvc.conn.MySQLConnUtils;
import com.demo2.webmvc.model.OrderDetail;
import com.demo2.webmvc.model.UserAccount;
import com.demo2.webmvc.ulti.MyUtils;
import java.net.URL;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.IOUtils;
@WebServlet("/login-facebook")
public class LoginFacebook extends HttpServlet {
  private static final long serialVersionUID = 1L;
  public LoginFacebook() {
    super();
  }
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String code = request.getParameter("code");
    HttpSession session = request.getSession();
    if (code == null || code.isEmpty()) {
      RequestDispatcher dis = request.getRequestDispatcher("/login.jsp");
      dis.forward(request, response);
    } else {
      String accessToken = RestFB.getToken(code);
      User user = RestFB.getUserInfo(accessToken);  //user này để lấy thông tin cá nhân người dùng
      UserAccount us = new UserAccount();   //user này để thao tác database, gán session
      //kiểm tra thông tin dã được thêm vào database hay chưa
      String avatar = "http://graph.facebook.com/"+user.getId()+"/picture?type=large";
      Connection conn;
        try {
            conn = MySQLConnUtils.getMySQLConnection();
            
            //vì code gắn username_login của người dùng fb account bằng id_token nên
            us =  DBUtils.Check_FB_login(conn,user.getId(),avatar,user.getName(),accessToken);
            session.setAttribute("count_wishlist", DBUtils.Get_Count_Wishlist(conn, String.valueOf(us.getId_user())));
            //gán lại giá trị cho us
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginFacebook.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(LoginFacebook.class.getName()).log(Level.SEVERE, null, ex);
        }
            MyUtils.storeLoginedUser(session, us);
            List<OrderDetail> cart = new ArrayList();
            session.setAttribute("cart", cart);
            session.setAttribute("count_cart", cart.size());
            session.setAttribute("total_cart", 0);
            RequestDispatcher dispatcher //
                    = this.getServletContext().getRequestDispatcher("/home");
                dispatcher.forward(request, response);
    }
    
  }
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    doGet(request, response);
  }
}