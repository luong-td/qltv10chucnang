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
import model.NhanVien;
import model.Sach;

/**
 *
 * @author DELL
 */
public class NhanVienDB {
    public static PreparedStatement ps;
    private static ArrayList<NhanVien> listNhanVien = null;
    public synchronized static ArrayList<NhanVien> getListNhanVien() throws SQLException, IOException{
        listNhanVien = new ArrayList<>();
        try {
            ps=connect.Connect.getConnection().prepareStatement("select * from [qltv].[dbo].[tbnv]");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                NhanVien nhanVien = new NhanVien();
                nhanVien.setMa(rs.getString("ma"));
                nhanVien.setTen(rs.getString("ten"));
                nhanVien.setDchi(rs.getString("diachi"));
                nhanVien.setSdt(rs.getString("sdt"));
                nhanVien.setAccount(rs.getString("account"));
                nhanVien.setPassword(rs.getString("password"));
                nhanVien.setQuyen(rs.getString("quyen"));
                listNhanVien.add(nhanVien);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listNhanVien; 
    }
    public static NhanVien getNhanVienbyma(String ma) throws SQLException, IOException{
        
        try {
            ps=connect.Connect.getConnection().prepareStatement("select * from [qltv].[dbo].[tbnv] where ma = ?");
            ps.setString(1, ma);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                NhanVien nhanVien = new NhanVien();
                nhanVien.setMa(rs.getString("ma"));
                nhanVien.setTen(rs.getString("ten"));
                nhanVien.setDchi(rs.getString("diachi"));
                nhanVien.setSdt(rs.getString("sdt"));
                nhanVien.setAccount(rs.getString("account"));
                nhanVien.setPassword(rs.getString("password"));
                nhanVien.setQuyen(rs.getString("quyen"));
                return nhanVien;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null; 
    }
    
}
