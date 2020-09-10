///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package com.shop.repository;
//
//import java.sql.Connection;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.sql.Statement;
//import javax.sql.DataSource;
//import model.SystemUser;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.stereotype.Repository;
//
///**
// *
// * @author User
// */
//@Repository
//public class UserDao {
//
//    @Autowired
//    private DataSource dataSource;
//
//    // =================== DB ===================
//    public SystemUser getUserByIdAndPasswordFromDB(String employeeId) {
//
//        SystemUser systemUser = null;
//        Connection conn = null;
//        Statement stmt = null;
//        ResultSet rs = null;
//        try {
//
//            conn = DBConnection.getConnection();
//
//            System.out.println("Creating statement...");
//            stmt = conn.createStatement();
//            String sql;
//            sql = "SELECT * FROM users where userId='" + employeeId+"'";
//            System.out.println(sql);
//            rs = stmt.executeQuery(sql);
//
//            if (rs.next()) {
//
////                 id
//// psssword
//// userId
//// userName
//// userRole
//                
//                
//                systemUser = new SystemUser();
//                systemUser.setUserId(rs.getString("userId"));
//                systemUser.setUserName(rs.getString("userName"));
//                systemUser.setPassword(rs.getString("password"));
//                systemUser.setUserRole(rs.getString("userRole"));
//
//                // encode pass    
//                String pass = systemUser.getPassword();
//                pass = new BCryptPasswordEncoder().encode(pass);
//                systemUser.setPassword(pass);
//
//            }
//        } catch (SQLException se) {
//
//            se.printStackTrace();
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//
//            try {
//                if (rs != null) {
//                    rs.close();
//                }
//            } catch (SQLException se2) {
//                se2.printStackTrace();
//            }
//            try {
//                if (stmt != null) {
//                    stmt.close();
//                }
//            } catch (SQLException se2) {
//                se2.printStackTrace();
//            }
//            try {
//                if (conn != null) {
//                    conn.close();
//                }
//            } catch (SQLException se) {
//                se.printStackTrace();
//            }//end finally try
//        }//end try
//
//        return systemUser;
//    }
//
//}
