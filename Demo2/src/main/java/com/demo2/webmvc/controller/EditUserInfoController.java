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
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.FileItem;

/**
 *
 * @author Napster
 */
@WebServlet("/accountSetting")
public class EditUserInfoController extends HttpServlet {

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
            out.println("<title>Servlet EditUserInfoController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditUserInfoController at " + request.getContextPath() + "</h1>");
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
            request.setAttribute("init_user", DBUtils.Check_User_Cookie(conn, loginedUser.getUsername()));
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
                            = this.getServletContext().getRequestDispatcher("/accountSetting.jsp");
                    
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
                        = this.getServletContext().getRequestDispatcher("/accountSetting.jsp");
                
                dispatcher.forward(request, response);
                
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(EditUserInfoController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(EditUserInfoController.class.getName()).log(Level.SEVERE, null, ex);
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
        
        
            HttpSession session = request.getSession();
        // Kiểm tra người dùng đã đăng nhập (login) chưa.
        UserAccount loginedUser = MyUtils.getLoginedUser(session);
            try {         
                //String avatar = request.getParameter("avatar").trim();
                String avatar = "1.jpg";
                String fullname = request.getParameter("fullname").trim();
                String phone = request.getParameter("phone").trim();
                String email = request.getParameter("email").trim();
                
                String startDate= request.getParameter("birth").trim();
                SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
                java.util.Date date = sdf1.parse(startDate);
                java.sql.Date birth = new java.sql.Date(date.getTime()); 
                
                
                String address = request.getParameter("address").trim();
                String province = request.getParameter("province").trim();
                String district = request.getParameter("district").trim();
                String town = request.getParameter("town").trim();
                UserAccount user = new UserAccount();
                user.setId_user(loginedUser.getId_user());
                user.setAvatar(avatar);
                user.setName_user(fullname);
                user.setPhone(phone);
                user.setEmail(email);
                user.setBirth(birth);
                user.setAddress(address);
                user.setProvince(province);
                user.setDistrict(district);
                user.setTown(town);
                if(request.getParameter("Male")!=null)
                {
                    user.setSex("Male");
                }
                else if(request.getParameter("Female") != null)
                {
                    user.setSex("Female");
                }
                else
                {
                    user.setSex("Undentified");
                }
                try {
                    
                    //thêm user mới vào database, nhưng chưa cho người dùng active
                    Connection conn = MySQLConnUtils.getMySQLConnection();
                    if(!DBUtils.Update_User(conn, user))
                    {
                        request.setAttribute("errorString", "Update information Sucessfully");
                        
                    }
                    else
                    {
                        request.setAttribute("errorString", "Has error");
                    }
                    RequestDispatcher dispatcher //
                            = this.getServletContext().getRequestDispatcher("/accountSetting");
                    dispatcher.forward(request, response);
                    
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
                } catch (SQLException ex) {
                    Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
                }
                
            } catch (ParseException ex) {
                Logger.getLogger(EditUserInfoController.class.getName()).log(Level.SEVERE, null, ex);
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
