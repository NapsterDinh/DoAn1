/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo2.webmvc.controller;

import com.demo2.webmvc.conn.MySQLConnUtils;
import com.demo2.webmvc.model.Order;
import com.demo2.webmvc.model.OrderDetail;
import com.demo2.webmvc.model.Product;
import com.demo2.webmvc.model.UserAccount;
import com.demo2.webmvc.ulti.DBUtils;
import com.demo2.webmvc.ulti.MyUtils;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
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

/**
 *
 * @author Napster
 */
@WebServlet(urlPatterns = {"/cart"})
public class CartController extends HttpServlet  {
    private static final long serialVersionUID = 1L;
 
    public CartController() {
        super();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CartController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        // Kiểm tra người dùng đã đăng nhập (login) chưa.
        UserAccount loginedUser = MyUtils.getLoginedUser(session);

        Connection conn;
        try {
            conn = MySQLConnUtils.getMySQLConnection();
            session.setAttribute("count_wishlist", DBUtils.Get_Count_Wishlist(conn, loginedUser.getUsername()));
            List<OrderDetail> cart = (List<OrderDetail>) session.getAttribute("cart");
            float total_cart = Float.parseFloat(session.getAttribute("total_cart").toString());
            if(request.getParameter("pr_id")!=null)
            {
                int id_product_chosen = Integer.parseInt(request.getParameter("pr_id"));
                
                //add vo db
                if(request.getParameter("cart_state").equals("delete"))
                {
                    for (OrderDetail orderDetail : cart) {
                    if(orderDetail.getId_product() == id_product_chosen)
                    {
                        cart.remove(orderDetail);
                        total_cart -= orderDetail.getPrice();
                        break;
                    }
                }
                }
                else if (request.getParameter("cart_state").equals("add"))
                {
                    int flag =0;
                    for (OrderDetail orderDetail : cart) {
                            if(orderDetail.getId_product() == id_product_chosen)
                            {
                                flag =1;
                                if(request.getParameter("quantity").equals("2"))
                                {
                                    orderDetail.setAmount(orderDetail.getAmount() + Integer.parseInt(request.getParameter("amount")));
                                }
                                else
                                {
                                    orderDetail.setAmount(orderDetail.getAmount() + 1);
                                } 

                                break;
                            }
                         }
                    if(flag==0)
                    {
                        Product chosen_product = DBUtils.Load_product_By_Id(conn, id_product_chosen);
                        OrderDetail new_cart_item = new OrderDetail();
                    if(request.getParameter("quantity").equals("2"))
                    {
                        new_cart_item.setAmount(new_cart_item.getAmount() + Integer.parseInt(request.getParameter("amount")));
                    }
                    else
                    {
                        new_cart_item.setAmount(new_cart_item.getAmount() + 1);
                    }   
                    new_cart_item.setId_product(id_product_chosen);
                    new_cart_item.setId_sale_off(0);
                    new_cart_item.setPrice(chosen_product.getPrice());
                    new_cart_item.setProduct(chosen_product);
                    cart.add(new_cart_item);
                    }

                }
            }
            else{
                for (OrderDetail orderDetail : cart) {
                        String str = "pr"+orderDetail.getId_product();
                        orderDetail.setAmount(Integer.parseInt(request.getParameter(str)));
                }
            }
            
            
            total_cart =0;
            for (OrderDetail orderDetail : cart) {
                Product temp_pr = DBUtils.Load_product_By_Id(conn, orderDetail.getId_product());
                orderDetail.setProduct(temp_pr);
                orderDetail.setPrice(temp_pr.getPrice());
                if(temp_pr.getAmount() < orderDetail.getAmount())
                {
                    orderDetail.setAmount(temp_pr.getAmount());
                }
                total_cart += orderDetail.getPrice() * orderDetail.getAmount();
                
            }
            session.setAttribute("total_cart",total_cart);
            session.setAttribute("cart", cart);
            session.setAttribute("count_cart", cart.size());
            
            
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
                    = this.getServletContext().getRequestDispatcher("/cart.jsp");

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
                    = this.getServletContext().getRequestDispatcher("/cart.jsp");

            dispatcher.forward(request, response);
        }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ShopController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ShopController.class.getName()).log(Level.SEVERE, null, ex);
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
