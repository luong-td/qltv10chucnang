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
public class Sach implements Serializable{
    private String ma;
    private String ten;
    private String tacgia;
    private int slg;

    public Sach() {
    }

    public Sach(String ma, String ten, String tacgia, int slg) {
        this.ma = ma;
        this.ten = ten;
        this.tacgia = tacgia;
        this.slg = slg;
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

    public String getTacgia() {
        return tacgia;
    }

    public void setTacgia(String tacgia) {
        this.tacgia = tacgia;
    }

    public int getSlg() {
        return slg;
    }

    public void setSlg(int slg) {
        this.slg = slg;
    }
    
}
