package com.UserModul.service;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Getconnection {

    public static Connection getconnection() {
        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
        } catch (ClassNotFoundException | SQLException e) {

            System.out.println("connecrion class");
            System.out.println(e);
        }

        return con;

    }
    

}
