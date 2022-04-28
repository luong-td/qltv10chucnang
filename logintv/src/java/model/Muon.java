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
public class Muon implements Serializable{
    private int ma;
    private String ten;
    private String ms;
    private String sach;
    private String date;
    private String tt;

    public Muon() {

    }

    public Muon(int ma, String ten,String ms, String sach, String date, String tt) {
        this.ma = ma;
        this.ten = ten;
        this.ms=ms;
        this.sach = sach;
        this.date = date;
        this.tt = tt;
    }

    public int getMa() {
        return ma;
    }

    public void setMa(int ma) {
        this.ma = ma;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getMs() {
        return ms;
    }

    public void setMs(String ms) {
        this.ms = ms;
    }

    public String getSach() {
        return sach;
    }

    public void setSach(String sach) {
        this.sach = sach;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTt() {
        return tt;
    }

    public void setTt(String tt) {
        this.tt = tt;
    }


}
