/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package control;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;

/**
 *
 * @author DELL
 */
public class UserDB {
    public static PreparedStatement ps, p;
    public synchronized static void insert(User user ) throws SQLException, IOException{
        try {
            ps=connect.Connect.getConnection().prepareStatement("insert into [qltv].[dbo].[tbqltv](account, password, quyen) values(?, ?, ?)");
            ps.setString(1, user.getAccount());
            ps.setString(2, user.getPassword());
            ps.setString(3, "2");
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public synchronized static boolean checklogin(String account, String password ) throws SQLException, IOException{
        try {
            ps=connect.Connect.getConnection().prepareStatement("select * from [qltv].[dbo].[tbqltv] where account = ? and password = ? ");
            ps.setString(1, account);
            ps.setString(2, password);
//            ps.setString(3, user.getQuyen());
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                //if(user.getAccount().equalsIgnoreCase(rs.getString(1)))
                    return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public synchronized static boolean checkSingup(String account ) throws SQLException, IOException{
        try {
            ps=connect.Connect.getConnection().prepareStatement("select * from [qltv].[dbo].[tbqltv] where account = ?");
            ps.setString(1, account);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                //if(user.getAccount().equalsIgnoreCase(rs.getString(1)))
                    return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public static User getUser(String ma ) throws SQLException, IOException{
        try {
            ps=connect.Connect.getConnection().prepareStatement("select * from [qltv].[dbo].[tbqltv] where account = ?");
            ps.setString(1, ma);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                User u = new User();
                u.setAccount(rs.getString("account"));
                u.setPassword(rs.getString("password"));
                u.setQuyen(rs.getString("quyen"));
                    return u;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
