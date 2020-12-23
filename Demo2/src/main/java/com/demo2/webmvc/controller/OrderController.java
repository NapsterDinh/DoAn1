/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo2.webmvc.controller;

import com.demo2.webmvc.conn.MySQLConnUtils;
import com.demo2.webmvc.model.Order;
import com.demo2.webmvc.model.OrderDetail;
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
 * @author Napster
 */
@WebServlet(urlPatterns = {"/OrderController"})
public class OrderController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet OrderController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrderController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            // Kiểm tra người dùng đã đăng nhập (login) chưa.
            UserAccount loginedUser = MyUtils.getLoginedUser(session);
            float total_cart = Float.parseFloat(session.getAttribute("total_cart").toString());
            List<OrderDetail> cart = (List<OrderDetail>) session.getAttribute("cart");
            Connection conn = MySQLConnUtils.getMySQLConnection();
            if(Integer.parseInt(request.getParameter("create"))==1)
            {
                Order or = new Order();
                or.setAddress(loginedUser.getAddress());
                or.setDistrict(loginedUser.getDistrict());
                or.setId_user(loginedUser.getId_user());
                or.setProvince(loginedUser.getProvince());
                or.setTown(loginedUser.getTown());
                or.setTotal(total_cart);
                or.setList_order_detail(cart);
                
                DBUtils.Create_Order(conn, or);
                total_cart =0;
                cart = null;
                session.setAttribute("total_cart",total_cart);
                session.setAttribute("cart", cart);
                session.setAttribute("count_cart", 0);
            }
            List<Order> list_or = DBUtils.Load_Order_By_Id(conn,loginedUser.getId_user());
            session.setAttribute("list_or", list_or);
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
                        
                        
                        RequestDispatcher dispatcher //
                                = this.getServletContext().getRequestDispatcher("/Order.jsp");
                        
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
                    RequestDispatcher dispatcher //
                            = this.getServletContext().getRequestDispatcher("/Order.jsp");
                    
                    dispatcher.forward(request, response);
                }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(OrderController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(OrderController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
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
        doGet(request, response);
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
