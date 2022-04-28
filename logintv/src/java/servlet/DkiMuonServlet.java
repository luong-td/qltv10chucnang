/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import control.MuonDB;
import control.SachDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Muon;
import model.Sach;

/**
 *
 * @author DELL
 */
@WebServlet(name = "DkiMuonServlet", urlPatterns = {"/DkiMuonServlet"})
public class DkiMuonServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        try {
            String ma = request.getParameter("checkk");
            System.out.println(ma);

            if(ma==null){
                request.setAttribute("clickk", "0");

                request.getRequestDispatcher("/LoadDkiMuonServlet").forward(request, response);
            }else{
                Sach s = SachDB.getSachbyma(ma);
                if(s.getSlg()==0){
                    request.setAttribute("checkDki", "1");
                    request.getRequestDispatcher("/LoadDkiMuonServlet").forward(request, response);
                }else{

 Cookie ck[]=request.getCookies(); 
Cookie cookie = null;
for(int i=0;i<ck.length;i++){ 
cookie=ck[i];
System.out.println("click "+ cookie.getName() +"   "+cookie.getValue());
}
                    Muon muon = new Muon((MuonDB.getListMuon().size()+1),ck[1].getValue(), ma, SachDB.getSachbyma(ma).getTen(), "", "dang ki");
                    MuonDB.add(muon);
                    request.setAttribute("clickDki", "1");
                    request.getRequestDispatcher("/LoadDkiMuonServlet").forward(request, response);
                }
            }
        } catch (Exception e) {
        }
            
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
