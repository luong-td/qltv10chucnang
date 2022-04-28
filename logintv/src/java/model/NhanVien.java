/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.io.Serializable;

/**
 *
 * @author DELL
 */
public class NhanVien implements Serializable{
    private String ma;
    private String ten;
    private String dchi;
    private String sdt;
    private String account;
    private String password;
    private String quyen;
    public NhanVien() {
    }

    public NhanVien(String ma, String ten, String dchi, String sdt, String account, String password, String quyen) {
        this.ma = ma;
        this.ten = ten;
        this.dchi = dchi;
        this.sdt = sdt;
        this.account = account;
        this.password = password;
        this.quyen = quyen;
    }

    

    public String getMa() {
        return ma;
    }

    public void setMa(String ma) {
        this.ma = ma;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getDchi() {
        return dchi;
    }

    public void setDchi(String dchi) {
        this.dchi = dchi;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getQuyen() {
        return quyen;
    }

    public void setQuyen(String quyen) {
        this.quyen = quyen;
    }

}
