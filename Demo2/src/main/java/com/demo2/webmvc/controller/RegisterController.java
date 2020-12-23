/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo2.webmvc.controller;

import com.demo2.webmvc.conn.MySQLConnUtils;
import com.demo2.webmvc.model.UserAccount;
import com.demo2.webmvc.service.ValidateRegister;
import static com.demo2.webmvc.service.ValidateRegister.isValid;
import static com.demo2.webmvc.service.ValidateRegister.isValidConfirmPass;
import com.demo2.webmvc.ulti.DBUtils;
import com.demo2.webmvc.ulti.MyUtils;
import com.demo2.webmvc.service.SendingEmail;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;
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
@WebServlet(urlPatterns = { "/register" })
public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public RegisterController() {
        super();
    }

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
            out.println("<title>Servlet RegisterController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/register.jsp");
 
        dispatcher.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userName = request.getParameter("username").trim();
        String email = request.getParameter("email").trim();
        String password = request.getParameter("password").trim();
        String confirmpass = request.getParameter("confirmpass").trim();
        UserAccount user = null;
        boolean hasError = false;
        String errorString = null;
        List<String> list_attr = Arrays.asList(new String[100]);
        
            if(!isValid(userName,"username"))
            {
                list_attr.set(0, "border-color: red;");
                list_attr.set(1, "Username must not be contain special chars!");
                hasError = true;
            }
            if(!isValid(email,"email"))
            {
                hasError = true;
                list_attr.set(2, "border-color: red;");
                list_attr.set(3, "Email must be: example@gmail.com!");
            }
            if(!isValid(password,"password"))
            {
                hasError = true;
                list_attr.set(4, "border-color: red;");
                list_attr.set(5, "Password must not be contain special chars!");
            }
            if(!isValidConfirmPass(password, confirmpass))
            {
                hasError = true;
                list_attr.set(6, "border-color: red;");
                list_attr.set(7, "Confimpassword must be same password!");
            }
            
        try {
            //kiểm tra tên đăng nhập, email có tồn tại hay chưa.
            Connection conn = MySQLConnUtils.getMySQLConnection();
            try {
                if(DBUtils.Check_Username(conn, userName))
                {
                    list_attr.set(1, "This username was used!");
                    hasError = true;
                }
                if(DBUtils.Check_Email(conn, email))
                {
                    list_attr.set(3, "This email was used!");
                    hasError = true;
                }
                } catch (SQLException e) {
                    e.printStackTrace();
                    hasError = true;
                    errorString = e.getMessage();
                }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
        }
            UserAccount temp_user = new UserAccount();
            temp_user.setUsername(userName);
            temp_user.setEmail(email);
            temp_user.setPass(password);
            //chỗ này chưa encode password. Sau này kiểm tra xong k có lỗi input gì mới tiến hành encode
        // Trong trường hợp có lỗi,
        // forward (chuyển hướng) tới /WEB-INF/views/login.jsp
        if (hasError) {
            HttpSession session = request.getSession();
            session.setAttribute("list_attr",list_attr);
            session.setAttribute("errorString",errorString);
            session.setAttribute("temp_user", temp_user);
            /*HttpSession session = request.getSession();
            */
            // Forward (Chuyển tiếp) tới trang /WEB-INF/views/login.jsp
            RequestDispatcher dispatcher //
                    = this.getServletContext().getRequestDispatcher("/register.jsp");
            dispatcher.forward(request, response);
        }
        // Trường hợp không có lỗi.
        // Lưu thông tin người dùng vào Session.
        // Và chuyển hướng sang trang userInfo.
        else {
            //tạo ra 1 hash string để sau này active link xác nhận gửi qua gmail
            String myhash;
            Random rand = new Random();
            rand.nextInt(999999);
            myhash = DigestUtils.md5Hex(""+rand);
            temp_user.setHash(myhash);
            try {
                
                //thêm user mới vào database, nhưng chưa cho người dùng active
                Connection conn = MySQLConnUtils.getMySQLConnection();
                if(!DBUtils.Add_NewAccount(conn, temp_user.getUsername(), temp_user.getPass(), temp_user.getEmail(),temp_user.getHash()))
                {
                    errorString = "Cant add new user!!!";
                    HttpSession session = request.getSession();
                    session.setAttribute("errorString",errorString);
                    // Forward (Chuyển tiếp) tới trang /WEB-INF/views/login.jsp
                    RequestDispatcher dispatcher //
                            = this.getServletContext().getRequestDispatcher("/register.jsp");
                    dispatcher.forward(request, response);
                }
                else
                {
                    SendingEmail sendmail =  new SendingEmail(temp_user.getEmail(), temp_user.getHash());
                    if(sendmail.sendVerifyEmail())
                    {
                        RequestDispatcher dispatcher //
                        = this.getServletContext().getRequestDispatcher("/verify.jsp");
                        dispatcher.forward(request, response);
                    }
                    else
                    {
                        response.sendRedirect("/index.jsp");
                    }
                    
                    
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
