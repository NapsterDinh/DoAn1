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
@WebServlet(urlPatterns = {"/wishlist"})
public class WishlistController extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet WishlistController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet WishlistController at " + request.getContextPath() + "</h1>");
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
            Connection conn = MySQLConnUtils.getMySQLConnection();
            session.setAttribute("count_wishlist", DBUtils.Get_Count_Wishlist(conn, loginedUser.getUsername()));
            
            int id_product_chosen = Integer.parseInt(request.getParameter("pr_id"));
            Product chosen_product = DBUtils.Load_product_By_Id(conn, id_product_chosen);
            List <Product> wishlist = new ArrayList();
            //add vo db
            if(request.getParameter("wishlist_state").equals("delete"))
            {
                wishlist = DBUtils.Delete_Wishlist(conn, loginedUser.getId_user(), id_product_chosen, loginedUser.getUsername());
            }
            else if(request.getParameter("wishlist_state").equals("add"))
            {
                
                wishlist = DBUtils.Add_Wishlist(conn, loginedUser.getId_user(), id_product_chosen, loginedUser.getUsername());
            }
            else {
                wishlist = DBUtils.Check_WishList_Cookie(conn, loginedUser.getUsername());
            }

            //cập nhật lại nếu như nó thay đổi số lượng
            
            
            MyUtils.storeWishList(session, wishlist);
            session.setAttribute("count_wishlist", wishlist.size());
            
            
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
                            = this.getServletContext().getRequestDispatcher("/wishlist.jsp");
                    
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
                        = this.getServletContext().getRequestDispatcher("/wishlist.jsp");
                
                dispatcher.forward(request, response);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(WishlistController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(WishlistController.class.getName()).log(Level.SEVERE, null, ex);
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
        processRequest(request, response);
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
