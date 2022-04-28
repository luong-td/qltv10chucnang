/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package control;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Sach;

/**
 *
 * @author DELL
 */
public class SachDB {
    public static PreparedStatement ps;
    private static ArrayList<Sach> list = null;
    public synchronized static ArrayList<Sach> getListSach() throws SQLException, IOException{
        list = new ArrayList<>();
        try {
            ps=connect.Connect.getConnection().prepareStatement("select * from [qltv].[dbo].[tbsach]");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Sach s = new Sach();
                s.setMa(rs.getString("ma"));
                s.setTen(rs.getString("ten"));
                s.setTacgia(rs.getString("tacgia"));
                s.setSlg(Integer.parseInt(rs.getString("soluong")));
                list.add(s);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list; 
    }
    public static Sach getSachbyma(String ma) throws SQLException, IOException{
        
        try {
            ps=connect.Connect.getConnection().prepareStatement("select * from [qltv].[dbo].[tbsach] where ma = ?");
            ps.setString(1, ma);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Sach s = new Sach();
                s.setMa(rs.getString("ma"));
                s.setTen(rs.getString("ten"));
                s.setTacgia(rs.getString("tacgia"));
                s.setSlg(Integer.parseInt(rs.getString("soluong")));
                return s;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null; 
    }
    public static void update(Sach s){
        try {
            ps=connect.Connect.getConnection().prepareStatement("update [qltv].[dbo].[tbsach] set [ten] = ?, [tacgia] = ?, [soluong] = ? where [ma] = ? ");
            ps.setString(1, s.getTen());
            ps.setString(2, s.getTacgia());
            ps.setString(3, String.valueOf(s.getSlg()));
            ps.setString(4, s.getMa());
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void delete(Sach s){
        try {
            ps=connect.Connect.getConnection().prepareStatement("delete from [qltv].[dbo].[tbsach] where [ma] = ? ");
            ps.setString(1, s.getMa());
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static void insert(Sach s){
        try {
            ps=connect.Connect.getConnection().prepareStatement("insert into [qltv].[dbo].[tbsach](ma, ten, tacgia, soluong) values(?, ?, ?, ?)");
            ps.setString(1, s.getMa());
            ps.setString(2, s.getTen());
            ps.setString(3, s.getTacgia());
            ps.setString(4, String.valueOf(s.getSlg()));
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static boolean checkma(Sach s){
        try {
            ps=connect.Connect.getConnection().prepareStatement("select * from [qltv].[dbo].[tbsach] where ma = ?");
            ps.setString(1, s.getMa());
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
