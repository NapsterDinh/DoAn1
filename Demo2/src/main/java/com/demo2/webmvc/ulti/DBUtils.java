/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo2.webmvc.ulti;

import com.demo2.webmvc.model.District;
import com.demo2.webmvc.model.Order;
import com.demo2.webmvc.model.OrderDetail;
import com.demo2.webmvc.model.Product;
import com.demo2.webmvc.model.Province;
import com.demo2.webmvc.model.Town;
import com.demo2.webmvc.model.UserAccount;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.codec.digest.DigestUtils;

/**
 *
 * @author Napster
 */
public class DBUtils {
    
    public static UserAccount Check_Login(Connection conn, //
            String userName, String password) throws SQLException {
        //khoi tao loi goi thuc thi thu tuc
        CallableStatement command = conn.prepareCall("{call `Procedure_Check_Login` (?, ?)}");  
        command.setString(1, userName);// cung cap gia tro cho bien
        command.setString(2, password);// cung cap gia tro cho bien
        UserAccount user = new UserAccount();
        List<String> list_action = new ArrayList();
        int count=1;
        command.execute();
        ResultSet rs = command.getResultSet();
            while(rs.next())
            {
                if(count==1)
                {
                    user.setId_user(rs.getInt(1));
                    user.setPermission(rs.getInt(2));
                    user.setState(rs.getBoolean(3));
                    user.setUsername(rs.getString(4));
                    user.setPass(rs.getString(5));
                    user.setName_user(rs.getString(7));
                    user.setEmail(rs.getString(8));
                    user.setAvatar(rs.getString(9));
                    user.setPhone(rs.getString(10));
                    user.setSex(rs.getString(11));
                    user.setBirth(rs.getDate(12));
                    user.setAddress(rs.getString(13));
                    user.setProvince(rs.getString(14));
                    user.setDistrict(rs.getString(15));
                    user.setTown(rs.getString(16));
                    user.setDate_in(rs.getDate(17));
                    user.setId_token(rs.getString(18));
                    user.setToken(rs.getString(19));
                    user.setHash(rs.getString(20));
                    list_action.add(rs.getString(23));
                }
                list_action.add(rs.getString(23));
                count++;
               
            }
            user.setList_action(list_action);
            return user;
    }
    
    public static UserAccount Check_User_Cookie(Connection conn, //
            String userName) throws SQLException {
        //khoi tao loi goi thuc thi thu tuc
        CallableStatement command = conn.prepareCall("{call `Procedure_Check_User_Cookie` (?)}");  
        command.setString(1, userName);// cung cap gia tro cho bien
        UserAccount user = new UserAccount();
        List<String> list_action = new ArrayList();
        int count=1;
        command.execute();
        ResultSet rs = command.getResultSet();
            while(rs.next())
            {
                if(count==1)
                {
                    user.setId_user(rs.getInt(1));
                    user.setPermission(rs.getInt(2));
                    user.setState(rs.getBoolean(3));
                    user.setUsername(rs.getString(4));
                    user.setPass(rs.getString(5));
                    user.setName_user(rs.getString(7));
                    user.setEmail(rs.getString(8));
                    user.setAvatar(rs.getString(9));
                    user.setPhone(rs.getString(10));
                    user.setSex(rs.getString(11));
                    user.setBirth(rs.getDate(12));
                    user.setAddress(rs.getString(13));
                    user.setProvince(rs.getString(14));
                    user.setDistrict(rs.getString(15));
                    user.setTown(rs.getString(16));
                    user.setDate_in(rs.getDate(17));
                    user.setId_token(rs.getString(18));
                    user.setToken(rs.getString(19));
                    user.setHash(rs.getString(20));
                    list_action.add(rs.getString(23));
                }
                list_action.add(rs.getString(23));
                count++;
                
                
            }
            user.setList_action(list_action);
            return user;
    }
    
    public static boolean Check_Action_Require_Login(Connection conn, //
            HttpServletRequest request) throws SQLException {
        String urlPattern = UrlPatternUtils.getUrlPattern(request);
        //khoi tao loi goi thuc thi thu tuc
        List<String> list_action = new ArrayList();
        CallableStatement command = conn.prepareCall("{call `Procedure_Check_Action_Require_Login`}");  
        command.execute();
        UserAccount us = null;
        ResultSet rs = command.getResultSet();
            while(rs.next())
            {
                list_action.add(rs.getString(1));
            }
        if (list_action.contains(urlPattern)) 
        {
                return true;
        }
        return false;
    }
    
    
    public static boolean Check_Username(Connection conn, //
            String userName) throws SQLException {
        //khoi tao loi goi thuc thi thu tuc
        CallableStatement command = conn.prepareCall("{call `Procedure_Check_Username` (?)}");  
        command.setString(1, userName);// cung cap gia tro cho bien
        command.execute();
        ResultSet resultSet = command.getResultSet();
            while(resultSet.next())
            {
                return true;
            }
        
        return false;
    }
    public static boolean Check_Email(Connection conn, //
            String email) throws SQLException {
        //khoi tao loi goi thuc thi thu tuc
        CallableStatement command = conn.prepareCall("{call `Procedure_Check_Email` (?)}");  
        command.setString(1, email);// cung cap gia tro cho bien
        command.execute();
        ResultSet resultSet = command.getResultSet();
            while(resultSet.next())
            {
                return true;
            }
        
        return false;
    }
    public static boolean Check_Phone(Connection conn, //
            String phone) throws SQLException {
        //khoi tao loi goi thuc thi thu tuc
        CallableStatement command = conn.prepareCall("{call `Procedure_Check_Phone` (?)}");  
        command.setString(1, phone);// cung cap gia tro cho bien
        command.execute();
        ResultSet resultSet = command.getResultSet();
            while(resultSet.next())
            {
                return true;
            }
        
        return false;
    }
    
    public static boolean Add_NewAccount(Connection conn, //
            String username, String password, String email,String hash) throws SQLException {
        
        String newPword = DigestUtils.md5Hex(password);
        conn.setAutoCommit(false); // 1. Disable individualtransaction
        try {
                //khoi tao loi goi thuc thi thu tuc
            CallableStatement command = conn.prepareCall("{call `Procedure_AddNewAccount_Login` (?,?,?,?)}");  
            command.setString(1, username);// cung cap gia tro cho bien
            command.setString(2, newPword);// cung cap gia tro cho bien
            command.setString(3, email);// cung cap gia tro cho bien
            command.setString(4, hash);// cung cap gia tro cho bien
            command.execute();
            conn.commit(); // 2. commit data to database if all command are success
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            conn.rollback();  // 2. roll-back data if one of command are failed
            return false;
        }
        
    }
    
    //code này có transaction trong mysql rồi nên k cần dùng đến commit và rollback
        public static boolean Check_Account_Active_Yet(Connection conn, //
            String email, String hash) throws SQLException {
        //conn.setAutoCommit(false); // 1. Disable individualtransaction //nhưng phải có cái này
        try {
                //khoi tao loi goi thuc thi thu tuc
            CallableStatement command = conn.prepareCall("{call `Procedure_Check_Account_Active_Yet` (?,?)}");  
            command.setString(1, email);// cung cap gia tro cho bien
            command.setString(2, hash);// cung cap gia tro cho bien
            command.execute();
            return true;
        } catch (SQLException e) {
            System.out.println("activation file: "+e);
            return false;
        }
    }
       
         //code này có transaction trong mysql rồi nên k cần dùng đến commit và rollback
        public static UserAccount Check_FB_login(Connection conn, //
            String id_token, String avatar, String name_user, String token) throws SQLException {
           conn.setAutoCommit(false); // 1. Disable individualtransaction
        //conn.setAutoCommit(false); // 1. Disable individualtransaction //nhưng phải có cái này
        try {
                //khoi tao loi goi thuc thi thu tuc
            CallableStatement command = conn.prepareCall("{call `Procedure_Check_FB_login` (?,?,?,?)}");  
            command.setString(1, id_token);// cung cap gia tro cho bien
            command.setString(2, avatar);
            command.setString(3, name_user);
            command.setString(4, token);
            command.execute();
            // Executes the Procedure statement 
            ResultSet rs = command.getResultSet();
            while(rs.next())
            {
                UserAccount user = new UserAccount();
                user.setId_user(rs.getInt(1));
                user.setPermission(rs.getInt(2));
                user.setState(rs.getBoolean(3));
                user.setUsername(rs.getString(4));
                user.setPass(rs.getString(5));
                user.setName_user(rs.getString(7));
                user.setEmail(rs.getString(8));
                user.setAvatar(rs.getString(9));
                user.setPhone(rs.getString(10));
                user.setSex(rs.getString(11));
                user.setBirth(rs.getDate(12));
                user.setAddress(rs.getString(13));
                user.setProvince(rs.getString(14));
                user.setDistrict(rs.getString(15));
                user.setTown(rs.getString(16));
                user.setDate_in(rs.getDate(17));
                user.setId_token(rs.getString(18));
                user.setToken(rs.getString(19));
                user.setHash(rs.getString(20));
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            conn.rollback();  // 2. roll-back data if one of command are failed
            return null;
        }
        return null;
    }
     
        public static int Get_Count_Wishlist(Connection conn, //
            String userName) throws SQLException {
        //khoi tao loi goi thuc thi thu tuc
        CallableStatement command = conn.prepareCall("{call `Procedure_Get_Count_Wishlist` (?,?)}");  
        command.setString(1, userName);// cung cap gia tro cho bien
        command.registerOutParameter(2, Types.INTEGER);
        command.execute();
        Integer count_wishlist =0;
        count_wishlist = (Integer) command.getObject(2, Integer.class);    
        return count_wishlist;
    }
        
        public static List<Product> Check_WishList_Cookie(Connection conn, //
            String userName) throws SQLException {
        //khoi tao loi goi thuc thi thu tuc
        CallableStatement command = conn.prepareCall("{call `Procedure_Check_WishList_Cookie` (?)}");  
        command.setString(1, userName);// cung cap gia tro cho bien
        
        List<Product> wishlist = new ArrayList();
        command.execute();
        ResultSet rs = command.getResultSet();
            while(rs.next())
            {
                Product pr = new Product();
                pr.setId_Product(rs.getInt(1));
                pr.setId_Category(rs.getInt(2));
                pr.setName_product(rs.getString(3));
                pr.setDescription(rs.getString(4));
                pr.setAmount(rs.getInt(5));
                pr.setPrice(rs.getFloat(6));
                pr.setState(rs.getInt(7));
                pr.setDate(rs.getDate(8));
                pr.setImage(rs.getString(9));
                wishlist.add(pr);
            }
            return wishlist;
    }
        
        
         //code này có transaction trong mysql rồi nên k cần dùng đến commit và rollback
        public static List<Product> Load_product(Connection conn) throws SQLException {
        //conn.setAutoCommit(false); // 1. Disable individualtransaction //nhưng phải có cái này
        try {
            List<Product> list_product = new ArrayList();
                //khoi tao loi goi thuc thi thu tuc
            CallableStatement command = conn.prepareCall("{call `Procedure_Load_Product`()}");  
            command.execute();
            // Executes the Procedure statement 
            ResultSet rs = command.getResultSet();
            while(rs.next())
            {
                Product pr = new Product();
                pr.setId_Product(rs.getInt(1));
                pr.setId_Category(rs.getInt(2));
                pr.setName_product(rs.getString(3));
                pr.setDescription(rs.getString(4));
                pr.setAmount(rs.getInt(5));
                pr.setPrice(rs.getFloat(6));
                pr.setState(rs.getInt(7));
                pr.setDate(rs.getDate(8));
                pr.setImage(rs.getString(9));
                
                list_product.add(pr);
            }
            return list_product;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
        
    //code này có transaction trong mysql rồi nên k cần dùng đến commit và rollback
        public static Product Load_product_By_Id(Connection conn,int id_product) throws SQLException {
        //conn.setAutoCommit(false); // 1. Disable individualtransaction //nhưng phải có cái này
        try {
            Product pr = new Product();
                //khoi tao loi goi thuc thi thu tuc
            CallableStatement command = conn.prepareCall("{call `Procedure_Load_Product_By_Id`(?)}");  
            command.setInt(1, id_product);// cung cap gia tro cho bien
            command.execute();
            // Executes the Procedure statement 
            ResultSet rs = command.getResultSet();
            while(rs.next())
            {
                pr.setId_Product(rs.getInt(1));
                pr.setId_Category(rs.getInt(2));
                pr.setName_product(rs.getString(3));
                pr.setDescription(rs.getString(4));
                pr.setAmount(rs.getInt(5));
                pr.setPrice(rs.getFloat(6));
                pr.setState(rs.getInt(7));
                pr.setDate(rs.getDate(8));
                pr.setImage(rs.getString(9));
            }
            return pr;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
        
        
        public static List<Product> Add_Wishlist(Connection conn, //
            int id_user, int id_pr, String name_user) throws SQLException {
        //khoi tao loi goi thuc thi thu tuc
        CallableStatement command = conn.prepareCall("{call `Procedure_Add_WishList` (?,?,?)}");  
        command.setInt(1, id_user);// cung cap gia tro cho bien
        command.setInt(2, id_pr);// cung cap gia tro cho bien
        command.setString(3, name_user);
        command.execute();
        List<Product> wishlist = new ArrayList();
        ResultSet rs = command.getResultSet();
            while(rs.next())
            {
                Product pr = new Product();
                pr.setId_Product(rs.getInt(1));
                pr.setId_Category(rs.getInt(2));
                pr.setName_product(rs.getString(3));
                pr.setDescription(rs.getString(4));
                pr.setAmount(rs.getInt(5));
                pr.setPrice(rs.getFloat(6));
                pr.setState(rs.getInt(7));
                pr.setDate(rs.getDate(8));
                pr.setImage(rs.getString(9));
                wishlist.add(pr);
            }
            return wishlist;
    }
    
        
    public static List<Product> Delete_Wishlist(Connection conn, //
            int id_user, int id_pr, String name_user) throws SQLException {
        //khoi tao loi goi thuc thi thu tuc
        CallableStatement command = conn.prepareCall("{call `Procedure_Delete_WishList` (?,?,?)}");  
        command.setInt(1, id_user);// cung cap gia tro cho bien
        command.setInt(2, id_pr);// cung cap gia tro cho bien
        command.setString(3, name_user);
        command.execute();
        List<Product> wishlist = new ArrayList();
        ResultSet rs = command.getResultSet();
            while(rs.next())
            {
                Product pr = new Product();
                pr.setId_Product(rs.getInt(1));
                pr.setId_Category(rs.getInt(2));
                pr.setName_product(rs.getString(3));
                pr.setDescription(rs.getString(4));
                pr.setAmount(rs.getInt(5));
                pr.setPrice(rs.getFloat(6));
                pr.setState(rs.getInt(7));
                pr.setDate(rs.getDate(8));
                pr.setImage(rs.getString(9));
                wishlist.add(pr);
            }
            return wishlist;
    }
    

    //tỉnh huyện xã
    public static List<Province> Load_Province(Connection conn) throws SQLException 
    {
        //khoi tao loi goi thuc thi thu tuc
        CallableStatement command = conn.prepareCall("{call `Procedure_Load_Province` ()}");  
        command.execute();
        List<Province> list_province = new ArrayList();
        ResultSet rs = command.getResultSet();
            while(rs.next())
            {
                Province pr = new Province();
                pr.setId(rs.getInt(1));
                pr.setName(rs.getString(2));
                list_province.add(pr);
            }
            return list_province;
    }
    
    public static List<District> Load_District_ByProvinceId(Connection conn, int id_province) throws SQLException 
    {
        //khoi tao loi goi thuc thi thu tuc
        CallableStatement command = conn.prepareCall("{call `Procedure_Load_District_ByProvinceId` (?)}");  
        command.setInt(1, id_province);// cung cap gia tro cho bien
        command.execute();
        List<District> list_district = new ArrayList();
        ResultSet rs = command.getResultSet();
            while(rs.next())
            {
                District dt = new District();
                dt.setId(rs.getInt(1));
                dt.setName(rs.getString(2));
                dt.setProvince_id(rs.getInt(4));
                list_district.add(dt);
            }
            return list_district;
    }
    
     public static List<Town> Load_Town_ByDistrictId(Connection conn, int id_district) throws SQLException 
    {
        //khoi tao loi goi thuc thi thu tuc
        CallableStatement command = conn.prepareCall("{call `Procedure_Load_Town_ByDistrictId` (?)}");  
        command.setInt(1, id_district);// cung cap gia tro cho bien
        command.execute();
        List<Town> list_town = new ArrayList();
        ResultSet rs = command.getResultSet();
            while(rs.next())
            {
                Town t = new Town();
                t.setId(rs.getInt(1));
                t.setName(rs.getString(2));
                t.setId_District(rs.getInt(4));
                list_town.add(t);
            }
            return list_town;
    }
     
      public static boolean Update_User(Connection conn, UserAccount us) throws SQLException 
    {
        try{
        //khoi tao loi goi thuc thi thu tuc
        CallableStatement command = conn.prepareCall("{call `Procedure_Update_User` (?,?,?,?,?,?,?,?,?,?,?)}");  
        command.setInt(1, us.getId_user());// cung cap gia tro cho bien
        command.setString(2, us.getAvatar());
        command.setString(3, us.getName_user());
        command.setString(4, us.getPhone());
        command.setString(5, us.getEmail());
        command.setDate(6, us.getBirth());
        command.setString(7, us.getSex());
        command.setString(8, us.getAddress());
        command.setString(9, us.getProvince());
        command.setString(10, us.getDistrict());
        command.setString(11, us.getTown());
        command.execute();
        command.execute();
        return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
      
      public static boolean Update_Avatar(Connection conn, UserAccount us,String filename) throws SQLException 
      {
        String sql = "Update `user` set	avatar_user = ? where id_user = ?";
        Connection dbConn = conn;
        try ( PreparedStatement statement = dbConn.prepareStatement(sql)) {
            statement.setString(1, filename);
            statement.setInt(2, us.getId_user());
            statement.executeUpdate();
            return true;
        }
        catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
      
      public static boolean Create_Order(Connection conn, Order or) throws SQLException 
    {
        int id_order =0;
        try{
        //khoi tao loi goi thuc thi thu tuc
        CallableStatement command = conn.prepareCall("{call `Procedure_CreateOrder_Order` (?,?,?,?,?,?)}");  
        command.setInt(1, or.getId_user());// cung cap gia tro cho bien
        command.setString(2, or.getAddress());
        command.setString(3, or.getProvince());
        command.setString(4, or.getDistrict());
        command.setString(5, or.getTown());
        command.setFloat(6, or.getTotal());
        command.execute();
        ResultSet rs = command.getResultSet();
            while(rs.next())
            {
                id_order = rs.getInt(1); 
            }
            for (OrderDetail object : or.getList_order_detail()) {
                command = conn.prepareCall("{CALL `Procedure_CreateOrderDetail_OrderDetail` (?, ?, ?, ?)}");  
                command.setInt(1, id_order);// cung cap gia tro cho bien
                command.setInt(2, object.getId_product());
                command.setInt(3, object.getAmount());
                command.setFloat(4, object.getPrice());
                command.execute();
            }
        return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
      
      
       public static List<Order> Load_Order_By_Id(Connection conn, int id_user) throws SQLException 
    {
        try{
            List<Order> list_or = new ArrayList();
        //khoi tao loi goi thuc thi thu tuc
        CallableStatement command = conn.prepareCall("{call `Procedure_Load_Order_ById` (?)}");  
        command.setInt(1, id_user);// cung cap gia tro cho bien
        command.execute();
        ResultSet rs = command.getResultSet();
            while(rs.next())
            {
                 Order or = new Order();
                 or.setId_order(rs.getInt(1));
                 or.setId_user(rs.getInt(2));
                 or.setAddress(rs.getString(3));
                 or.setProvince(rs.getString(4));
                 or.setDistrict(rs.getString(5));
                 or.setTown(rs.getString(6));
                 or.setDate_order(rs.getDate(7));
                 or.setDate_finish(rs.getDate(8));
                 or.setState_order(rs.getInt(9));
                 or.setTotal(rs.getFloat(10));
                 or.setFeedback(rs.getString(11));
                 list_or.add(or);
            }
            
        return list_or;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
       
       
    public static boolean Add_NewProduct(Connection conn,
            int category, String name, String description, int amount, float price, String image) throws SQLException {

        conn.setAutoCommit(false);
        CallableStatement command = conn.prepareCall("{call `Procedure_AddNewProduct_Product` (?,?,?,?,?,?)}");

        try {
            command.setInt(1, category);
            command.setString(2, name);
            command.setString(3, description);
            command.setInt(4, amount);
            command.setFloat(5, price);
            command.setString(6, image);
            command.execute();
            conn.commit();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            conn.rollback();
            return false;
        }
    }
    
    public static List<UserAccount> Load_UserAccount_All(Connection conn) throws SQLException {
        //conn.setAutoCommit(false); // 1. Disable individualtransaction //nhưng phải có cái này
        try {
            List<UserAccount> list_user = new ArrayList();
            //khoi tao loi goi thuc thi thu tuc
            CallableStatement command = conn.prepareCall("{call `Procedure_Load_UserAccount_All`()}");
            command.execute();
            // Executes the Procedure statement 
            ResultSet rs = command.getResultSet();
            while (rs.next()) {
                UserAccount ua = new UserAccount();
                ua.setId_user(rs.getInt(1));
                ua.setName_user(rs.getString(2));
                ua.setEmail(rs.getString(3));
                ua.setName_province(rs.getString(4));
                ua.setDate_in(rs.getDate(5));
                ua.setPermission(rs.getInt(6));
                ua.setState(rs.getBoolean(7));
                ua.setAvatar(rs.getString(8));
                ua.setId_token(rs.getString(9));
                list_user.add(ua);
            }
            return list_user;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
    
    public static List<Product> Load_product_All(Connection conn) throws SQLException {
        //conn.setAutoCommit(false); // 1. Disable individualtransaction //nhưng phải có cái này
        try {
            List<Product> list_product = new ArrayList();
            //khoi tao loi goi thuc thi thu tuc
            CallableStatement command = conn.prepareCall("{call `Procedure_Load_Product_All`()}");
            command.execute();
            // Executes the Procedure statement 
            ResultSet rs = command.getResultSet();
            while (rs.next()) {
                Product pr = new Product();
                pr.setId_Product(rs.getInt(1));
                pr.setId_Category(rs.getInt(2));
                pr.setName_product(rs.getString(3));
                pr.setDescription(rs.getString(4));
                pr.setAmount(rs.getInt(5));
                pr.setPrice(rs.getFloat(6));
                pr.setState(rs.getInt(7));
                pr.setDate(rs.getDate(8));
                pr.setImage(rs.getString(9));

                list_product.add(pr);
            }
            return list_product;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
    
    public static boolean UpdateProduct_Image(Connection conn, int idproduct, int idcategory, String nameproduct, String descriptionproduct, int amountproduct, float priceproduct, String imageproduct) throws SQLException{
        try {
        CallableStatement command = conn.prepareCall("{call `Procedure_UpdateProduct_Image`(?,?,?,?,?,?,?)}");
        command.setInt(1, idproduct);// cung cap gia tro cho bien
        command.setInt(2, idcategory);
        command.setString(3, nameproduct);
        command.setString(4, descriptionproduct);
        command.setInt(5, amountproduct);
        command.setFloat(6, priceproduct);
        command.setString(7, imageproduct);
        command.execute();
        return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public static boolean UpdateProduct(Connection conn, int idproduct, int idcategory, String nameproduct, String descriptionproduct, int amountproduct, float priceproduct) throws SQLException{
        try {
        CallableStatement command = conn.prepareCall("{call `Procedure_UpdateProduct`(?,?,?,?,?,?)}");
        command.setInt(1, idproduct);// cung cap gia tro cho bien
        command.setInt(2, idcategory);
        command.setString(3, nameproduct);
        command.setString(4, descriptionproduct);
        command.setInt(5, amountproduct);
        command.setFloat(6, priceproduct);
        command.execute();
        return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public static boolean Delete_Product(Connection conn, int idproduct) throws SQLException{
        try {
        CallableStatement command = conn.prepareCall("{call `Procedure_DeleteProduce`(?)}");
        command.setInt(1, idproduct);// cung cap gia tro cho bien
        command.execute();
        return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    
    
    
    public static List<Product> Search_Product_By_IdCategory(Connection conn, int id_category) throws SQLException {
        //conn.setAutoCommit(false); // 1. Disable individualtransaction //nhưng phải có cái này
        try {
            List<Product> list_pr = new ArrayList();
            //khoi tao loi goi thuc thi thu tuc
            CallableStatement command = conn.prepareCall("{call `Procedure_Search_Product_By_IdCategory`(?)}");
            command.setInt(1, id_category);// cung cap gia tro cho bien
            command.execute();
            // Executes the Procedure statement 
            ResultSet rs = command.getResultSet();
            while (rs.next()) {
                Product pr = new Product();
                pr.setId_Product(rs.getInt(1));
                pr.setId_Category(rs.getInt(2));
                pr.setName_product(rs.getString(3));
                pr.setDescription(rs.getString(4));
                pr.setAmount(rs.getInt(5));
                pr.setPrice(rs.getFloat(6));
                pr.setState(rs.getInt(7));
                pr.setDate(rs.getDate(8));
                pr.setImage(rs.getString(9));
                list_pr.add(pr);
            }
            return list_pr;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
    
    
    
}
