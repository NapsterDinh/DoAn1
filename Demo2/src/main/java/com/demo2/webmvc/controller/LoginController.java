/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo2.webmvc.controller;

import com.demo2.webmvc.conn.ConnectionUtils;
import com.demo2.webmvc.conn.MySQLConnUtils;
import com.demo2.webmvc.model.OrderDetail;
import com.demo2.webmvc.model.UserAccount;
import com.demo2.webmvc.ulti.DBUtils;
import com.demo2.webmvc.ulti.MyUtils;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
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
import org.apache.commons.codec.digest.DigestUtils;

/**
 *
 * @author Napster
 */
@WebServlet(urlPatterns = { "/login" })
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public LoginController() {
        super();
    }
 
    // Hiển thị trang Login.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        // Forward tới trang /WEB-INF/views/loginView.jsp
        // (Người dùng không thể truy cập trực tiếp
        // vào các trang JSP đặt trong thư mục WEB-INF).
        RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/login.jsp");
 
        dispatcher.forward(request, response);
 
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userName = request.getParameter("username").trim();
        String password = request.getParameter("password").trim();
        String newPassword = DigestUtils.md5Hex(password);
        HttpSession session = request.getSession();
        UserAccount user = null;
        boolean hasError = false;
        String errorString = null;
 
        if (userName == null || password == null || userName.length() == 0 || password.length() == 0) {
            hasError = true;
            errorString = "Required username and password!";
        } else {
            try {
                Connection conn = MySQLConnUtils.getMySQLConnection();
                //Connection conn = MyUtils.getStoredConnection(request);
                try {
                    // Tìm user trong DB.
                    user = DBUtils.Check_Login(conn, userName, newPassword);
                    
                    if (user.getId_user() == 0) {
                        hasError = true;
                        errorString = "User Name or password invalid";
                    }
                    else
                    {
                         session.setAttribute("count_wishlist", DBUtils.Get_Count_Wishlist(conn, userName));
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                    hasError = true;
                    errorString = e.getMessage();
                }
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        // Trong trường hợp có lỗi,
        // forward (chuyển hướng) tới /WEB-INF/views/login.jsp
        if (hasError) {
            // Lưu các thông tin vào request attribute trước khi forward.
            request.setAttribute("errorString", errorString);
            request.setAttribute("user", user);
            // Forward (Chuyển tiếp) tới trang /WEB-INF/views/login.jsp
            RequestDispatcher dispatcher //
                    = this.getServletContext().getRequestDispatcher("/login.jsp");
            dispatcher.forward(request, response);
        }
        // Trường hợp không có lỗi.
        // Lưu thông tin người dùng vào Session.
        // Và chuyển hướng sang trang userInfo.
        else {
            

            MyUtils.storeLoginedUser(session, user); 
            // Nếu người dùng chọn tính năng "Remember me".
            if (request.getParameter("rememberMe")!= null) {
                MyUtils.storeUserCookie(response, user);
            }
            // Ngược lại xóa Cookie
            else {
                MyUtils.deleteUserCookie(response);
            }
           int redirectId = -1;
           try {
               redirectId = Integer.parseInt(request.getParameter("redirectId"));
           } catch (Exception e) {
           }
           String requestUri = MyUtils.getRedirectAfterLoginUrl(request.getSession(), redirectId);
           if (requestUri != null) {
               response.sendRedirect(requestUri);
           } else {
               
               if(user.getPermission()==3)
               {
                    List<OrderDetail> cart = new ArrayList();
                    session.setAttribute("cart", cart);
                    session.setAttribute("count_cart", cart.size());
                    session.setAttribute("total_cart", 0);
                   RequestDispatcher dispatcher //
                    = this.getServletContext().getRequestDispatcher("/home");
                    dispatcher.forward(request, response);
               }
               else
               {
                   RequestDispatcher dispatcher //
                    = this.getServletContext().getRequestDispatcher("/DSSP");
                    dispatcher.forward(request, response);
               }

           }
            
        }
    }
    
}