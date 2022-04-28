/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package control;

import static control.UserDB.ps;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Muon;
import model.NhanVien;
import model.Sach;
import model.User;

/**
 *
 * @author DELL
 */
public class MuonDB {
    public static PreparedStatement ps;
    private static ArrayList<Muon> listMuon= null;
    public synchronized static ArrayList<Muon> getListMuon() throws SQLException, IOException{
        listMuon = new ArrayList<>();
        try {
            ps=connect.Connect.getConnection().prepareStatement("select * from [qltv].[dbo].[tbmuon] order by ma");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Muon muon = new Muon();
                muon.setMa(Integer.parseInt(rs.getString("ma")));
                muon.setTen(rs.getString("ten"));
                muon.setMs(rs.getString("ms"));
                muon.setSach(rs.getString("sach"));
                muon.setDate(rs.getString("date"));
                muon.setTt(rs.getString("tt"));
                listMuon.add(muon);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listMuon; 
    }



    public synchronized static ArrayList<Muon> getListMuon(String ma) throws SQLException, IOException{
        listMuon = new ArrayList<>();
        try {
            ps=connect.Connect.getConnection().prepareStatement("select * from [qltv].[dbo].[tbmuon] where ");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Muon muon = new Muon();
                muon.setTen(rs.getString("ten"));
                muon.setMs(rs.getString("ms"));
                muon.setSach(rs.getString("sach"));
                muon.setDate(rs.getString("date"));
                muon.setTt(rs.getString("tt"));
                listMuon.add(muon);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listMuon; 
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
    


    public synchronized static void add(Muon muon ) throws SQLException, IOException{
        try {
            ps=connect.Connect.getConnection().prepareStatement("insert into [qltv].[dbo].[tbmuon](ma, ten, ms, sach, date, tt) values(?, ?, ?, ?, ?, ?)");
            ps.setString(1, String.valueOf(muon.getMa()));
            ps.setString(2, muon.getTen());
            ps.setString(3, muon.getMs());
            ps.setString(4, muon.getSach());
            ps.setString(5, muon.getDate());
            ps.setString(6, muon.getTt());
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
