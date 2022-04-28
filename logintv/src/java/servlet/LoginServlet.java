/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import control.UserDB;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author DELL
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String url = "/index.jsp";
            
//        try {
//            UserDB.insert(user);
//        } catch (Exception e) {
//        }
        try {
            
            
            String account = request.getParameter("taikhoan");
            String password = request.getParameter("matkhau");
            User user = UserDB.getUser(account);
//            System.out.println(user.getAccount());
//            System.out.println(user.getPassword());
//            System.out.println(user.getQuyen());

            if(UserDB.checklogin(account, password)){
//                System.out.println(user.getQuyen());
                if(user.getQuyen().contains("0"))
                    url="/mainadmin.jsp";
                else if(user.getQuyen().contains("1"))
                    url="/mainnv.jsp";
                else if(user.getQuyen().contains("2"))
                    url="/maindg.jsp";

Cookie ck=new Cookie("name",account);  
            response.addCookie(ck);  

                System.out.println("login "+ ck);

            }else if(UserDB.checkSingup(account)){
                String messagedk ="Sai thông tin đăng nhập";
                request.setAttribute("messagedk", messagedk);
            }else{
                String messagedk ="Tài khoản không tồn tại";
                request.setAttribute("messagedk", messagedk);
//                url="/dangki.jsp";
//                request.getRequestDispatcher(url).forward(request, response);
            }
        } catch (Exception e) {
        }
        request.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
