/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package connect;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;

/**
 *
 * @author DELL
 */
public class Connect {
    private static Connection con;
    public static Connection getConnection(){
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String user = "sa";
            String pass = "lv9122017.";
            String url = "jdbc:sqlserver://localhost:1433;databaseName=qltv";
            con = DriverManager.getConnection(url, user, pass);
            System.out.println("thanh cong");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}
