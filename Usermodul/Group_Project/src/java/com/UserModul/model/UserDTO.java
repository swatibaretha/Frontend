/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.UserModul.model;

import com.UserModul.service.Getconnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 *
 * @author Dell
 */
public class UserDTO {
     public boolean registraion(UserDAO DAO) throws SQLException {
        boolean b = false;
        String sql = "insert into userRegistration(name,email,phone,dob,address,profile_photo,password) values(?,?,?,?,?,?,?)";
        Connection con = Getconnection.getconnection();
        String pass = DAO.getPassword();
        System.out.println("con = " + con);
        System.out.println("connecto........");
        System.out.println(con);
        byte[] enc = pass.getBytes();
            String encname = ""; 

            for (int i = 0; i < enc.length; i++) {
                if (!encname.isEmpty()) {
                    encname += "A"; 
                }
                        int modifiedValue = enc[i] * 2;
                        encname += modifiedValue;
                }

        
        if (con != null) {
            try {
                PreparedStatement ps1 = con.prepareStatement(sql);
                System.out.println("preperd........");
                ps1.setString(1, DAO.getName());
                ps1.setString(5, DAO.getAddres());
                ps1.setString(2, DAO.getEmail());
                ps1.setString(3, DAO.getPhone());
                ps1.setString(4, DAO.getDob());
                ps1.setString(6, DAO.getProfilephoto());
                ps1.setString(7, encname);
//                ps1.setInt(7, DAO.getUserID());
                System.out.println(".."+DAO.getUserID());
                int i = ps1.executeUpdate();
                System.out.println("....."+i);
                if (i > 0) {
                    b = true;
                }
            } catch (SQLException e) {

                System.out.println(e);
                b = false;
            }
        }

        return b;

    }
      public boolean login(UserDAO dao) {
        boolean b = false;
       
          System.out.println("--------------------------------------------");
            Connection con = Getconnection.getconnection();
            String sql = "select * from userRegistration where email=? and password=?";
             if (con != null) {
                 
             try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,dao.getEmail() );
            
            String pass = dao.getPassword();
            byte[] enc = pass.getBytes();
            String encname = ""; 

            for (int i = 0; i < enc.length; i++) {
                if (!encname.isEmpty()) {
                    encname += "A"; 
                }
                        int modifiedValue = enc[i] * 2;
                        encname += modifiedValue;
                }
            ps.setString(2, encname);
           
            ResultSet rs = ps.executeQuery();
                 System.out.println(rs);
            if (rs.next()) {
//                dao.setName(rs.getString("name"));
                    //(rs.getString("userID"));
                dao.setName(rs.getString("name"));
                 dao.setEmail(rs.getString("email"));
                  dao.setPhone(rs.getString("phone"));
                   dao.setAddres(rs.getString("address"));
                    dao.setDob(rs.getString("dob"));
                     dao.setProfilephoto(rs.getString("profile_photo"));
                      dao.setPassword(rs.getString("password"));
//              
                b = true;
            }
        } catch (SQLException e) {
            System.out.println("jkjk-----------------------------"+e);
        }
             }
        return b;
    }
      public boolean Update(UserDAO udao) {
        Connection con = Getconnection.getconnection();
        String query = "update userRegistration set name = ?, phone=?, dob=?,address=?,profile_photo=?  where email = ?";
        boolean result = false;
          System.out.println("connection................................");
        if (con != null) {
            try {
                System.out.println("true...............................");
                PreparedStatement ps = con.prepareStatement(query);

                System.out.println(udao.getName());

                ps.setString(1, udao.getName());
//                ps.setString(2, udao.getEmail());
                ps.setString(2, udao.getPhone());
                System.out.println(""+udao.getPhone());
                ps.setString(3, udao.getDob());
                System.out.println(""+udao.getDob());
                ps.setString(4, udao.getAddres());
                System.out.println(""+udao.getAddres());
                ps.setString(5, udao.getProfilephoto());
                ps.setString(6,udao.getEmail());
                System.out.println(""+udao.getEmail());
                System.out.println("qery "+ps.executeUpdate());
                if (ps.executeUpdate() > 0) {
                    System.out.println("djjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj");
                    result = true;
                }

            } catch (SQLException e) {
            }
        }
        return result;
    }
}
    

