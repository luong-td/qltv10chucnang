/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL
 */
public class User {
    private String account;
    private String password;
    private String quyen;
    public User() {
    }

    public User(String account, String password, String quyen) {
        this.account = account;
        this.password = password;
        this.quyen = quyen;
    }

    public User(String account, String password) {
        this.account = account;
        this.password = password;
        
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
