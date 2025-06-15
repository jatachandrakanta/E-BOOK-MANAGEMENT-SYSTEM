//package com.DB;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//
//public class DBConnect {
//	private static Connection conn;
//	public static Connection getConn() {
//		try {
//			Class.forName("jdbc:mysql://127.0.0.1:3306/Driver");
//
//			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook-app","root","jata");
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//		return conn;
//	}
//}


//package com.DB;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;
//
//public class DBConnect {
//    private static Connection conn;
//
//    public static Connection getConn() {
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver"); // Ensure MySQL JDBC Driver is loaded
//            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook-app", "root", "password");
//            System.out.println("Database Connected Successfully!");
//        } catch (ClassNotFoundException e) {
//            System.out.println("JDBC Driver Not Found!");
//            e.printStackTrace();
//        } catch (SQLException e) {
//            System.out.println("Database Connection Failed!");
//            e.printStackTrace();
//        }
//        return conn;
//    }
//}




















package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
    private static Connection conn;

    public static Connection getConn() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");  // ✅ Correct for MySQL 9.x
            
            conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/ebook-app", "root", "jata"
            );

            System.out.println("✅ DB Connected!");
        } catch (ClassNotFoundException e) {
            System.out.println("❌ JDBC Driver not found!");
            e.printStackTrace();
        } catch (Exception e) {
            System.out.println("❌ Connection failed!");
            e.printStackTrace();
        }

        return conn;
    }
}

