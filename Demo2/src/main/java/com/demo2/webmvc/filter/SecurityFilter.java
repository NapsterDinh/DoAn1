/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo2.webmvc.filter;

import com.demo2.webmvc.conn.MySQLConnUtils;
import com.demo2.webmvc.model.UserAccount;
import com.demo2.webmvc.ulti.DBUtils;
import com.demo2.webmvc.ulti.MyUtils;
import com.demo2.webmvc.ulti.UrlPatternUtils;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Napster
 */
@WebFilter(filterName = "securityFilter", urlPatterns = { "/*" })
public class SecurityFilter implements Filter {
 
    public SecurityFilter() {
    }
 
    @Override
    public void destroy() {
    }
 
    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
 
        String servletPath = request.getServletPath();
 
        // Thông tin người dùng đã được lưu trong Session
        // (Sau khi đăng nhập thành công).
        UserAccount loginedUser = MyUtils.getLoginedUser(request.getSession());
 
        if (servletPath.equals("/login")) {
            chain.doFilter(request, response);
            return;
        }
        Connection conn;
        try {
            conn = MySQLConnUtils.getMySQLConnection();
            // Các trang bắt buộc phải đăng nhập.
            if (DBUtils.Check_Action_Require_Login(conn, request)) 
            {
                // Nếu người dùng chưa đăng nhập,
                // Redirect (chuyển hướng) tới trang đăng nhập.
                if (loginedUser.getId_user() == 0) {

                    String requestUri = request.getRequestURI();

                    // Lưu trữ trang hiện tại để redirect đến sau khi đăng nhập thành công.
                    int redirectId = MyUtils.storeRedirectAfterLoginUrl(request.getSession(), requestUri);

                    response.sendRedirect(request.getContextPath() + "/login?redirectId=" + redirectId);
                    return;
                }
                String urlPattern = UrlPatternUtils.getUrlPattern(request);
                    // Kiểm tra người dùng có vai trò hợp lệ hay không?
                if (!loginedUser.getList_action().contains(urlPattern)) {
                       if(loginedUser.getPermission()==3)
                       {
                           RequestDispatcher dispatcher //
                            = request.getServletContext().getRequestDispatcher("/home");
                            dispatcher.forward(request, response);
                       }
                       else
                       {
                           RequestDispatcher dispatcher //
                            = request.getServletContext().getRequestDispatcher("/dssp");
                            dispatcher.forward(request, response);
                       }
                    /*RequestDispatcher dispatcher //
                            = request.getServletContext().getRequestDispatcher("/WEB-INF/views/accessDeniedView.jsp");

                    dispatcher.forward(request, response);
                    return;*/
                }
                
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SecurityFilter.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(SecurityFilter.class.getName()).log(Level.SEVERE, null, ex);
        }
        chain.doFilter(request, response);
     }
 
    @Override
    public void init(FilterConfig fConfig) throws ServletException {
 
    }
 
}