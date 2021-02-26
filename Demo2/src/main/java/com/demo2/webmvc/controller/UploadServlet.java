/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo2.webmvc.controller;
import com.demo2.webmvc.conn.MySQLConnUtils;
import com.demo2.webmvc.model.UserAccount;
import com.demo2.webmvc.ulti.DBUtils;
import com.demo2.webmvc.ulti.MyUtils;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
 
@WebServlet("/upload")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
       maxFileSize = 1024 * 1024 * 10, // 10MB
       maxRequestSize = 1024 * 1024 * 50) // 50MB
public class UploadServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
 
   public static final String SAVE_DIRECTORY = "src/main/webapp/uploads/User";
 
   public UploadServlet() {
       super();
   }
 
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
 
       RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/WEB-INF/jsps/uploadFile.jsp");
 
       dispatcher.forward(request, response);
   }
 
   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       try {
           // Đường dẫn tuyệt đối tới thư mục gốc của web app.
           String appPath = request.getServletContext().getRealPath("/uploads");
           appPath = appPath.replace('\\', '/');
           Path path = Paths.get(appPath);
           Path parentPath = path.getParent().getParent().getParent();
           System.out.println("Parentpath: " + parentPath.toString());
           
           // Thư mục để save file tải lên.
           String fullSavePath = null;
           if (parentPath.endsWith("/")) {
               fullSavePath = parentPath + SAVE_DIRECTORY;
           } else {
               fullSavePath = parentPath +"/"+SAVE_DIRECTORY;
           }
           // Thư mục để save file tải lên.
           String fullSavePath_sever = null;
           if (appPath.endsWith("/")) {
               fullSavePath_sever = appPath + SAVE_DIRECTORY;
           } else {
               fullSavePath_sever = appPath +"/"+SAVE_DIRECTORY;
           }
           // Tạo thư mục nếu nó không tồn tại.
           File fileSaveDir = new File(fullSavePath);
           if (!fileSaveDir.exists()) {
               fileSaveDir.mkdir();
           }
           // Tạo thư mục nếu nó không tồn tại.
           File fileSaveDir_sever = new File(fullSavePath_sever);
           if (!fileSaveDir_sever.exists()) {
               fileSaveDir_sever.mkdir();
           }
           System.out.println("fullSavePath: " + fullSavePath);
           String file_name_avatar = "";
           // Danh mục các phần đã upload lên (Có thể là nhiều file).
           for (Part part : request.getParts()) {
               String fileName = extractFileName(part);
               if (fileName != null && fileName.length() > 0) {
                   String filePath = fullSavePath + File.separator + fileName;
                   String filePath_sever = fullSavePath + File.separator + fileName;
                   System.out.println("Write attachment to file: " + filePath);
  
                   // Ghi vào file.
                   part.write(filePath);
                   part.write(filePath_sever);
                   file_name_avatar = fileName;
                   System.out.println("filename-avatar:"+ file_name_avatar);
               }
           }
           request.setAttribute("errorMessage", "Saving Successfully");
           // Upload thành công.
           
           //sửa lại trong db
           Connection conn = MySQLConnUtils.getMySQLConnection();
           HttpSession session = request.getSession();
           UserAccount us = MyUtils.getLoginedUser(session);
           if(DBUtils.Update_Avatar(conn, us,file_name_avatar))
           {
               MyUtils.storeLoginedUser(session, us);
           }
           else
           {
               
           }
           response.sendRedirect(request.getContextPath() + "/accountSetting.jsp");
           
       } catch (Exception e) {
           e.printStackTrace();
           request.setAttribute("errorMessage", "Error: " + e.getMessage());
           RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("accountSetting.jsp");
           dispatcher.forward(request, response);
       }
   }
 
   private String extractFileName(Part part) {
       // form-data; name="file"; filename="C:\file1.zip"
       // form-data; name="file"; filename="C:\Note\file2.zip"
       String contentDisp = part.getHeader("content-disposition");
       String[] items = contentDisp.split(";");
       for (String s : items) {
           if (s.trim().startsWith("filename")) {
               // C:\file1.zip
               // C:\Note\file2.zip
               String clientFileName = s.substring(s.indexOf("=") + 2, s.length() - 1);
               clientFileName = clientFileName.replace("\\", "/");
               int i = clientFileName.lastIndexOf('/');
               // file1.zip
               // file2.zip
               return clientFileName.substring(i + 1);
           }
       }
       return null;
   }
 
}