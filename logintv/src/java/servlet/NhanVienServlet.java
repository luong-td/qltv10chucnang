/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import control.NhanVienDB;
import control.SachDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.NhanVien;
import model.Sach;

/**
 *
 * @author DELL
 */
@WebServlet(name = "NhanVienServlet", urlPatterns = {"/NhanVienServlet"})
public class NhanVienServlet extends HttpServlet {

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
        String ma = request.getParameter("check");
        System.out.println(ma);
        String action = request.getParameter("action");
        if(action.equals("Add")){
                try {
                    List<Sach> listSach = SachDB.getListSach();
                        request.setAttribute("listSach", listSach);
                        request.getRequestDispatcher("/themSach.jsp").forward(request, response);
                } catch (Exception e) {
                }
            }
        else if(ma==null){
            request.setAttribute("click", "0");
            request.getRequestDispatcher("/LoadNhanVienServlet").forward(request, response);
        }else{
            if(action.equals("Edit")){
                try {

                        Sach s = new Sach();
                        s=SachDB.getSachbyma(ma);
                        System.out.println(s);
    //                    response.sendRedirect("editSach.jsp?MA="+s.getMa() );
    //                    response.sendRedirect("editSach.jsp?TEN="+s.getTen());
                    List<Sach> listSach = SachDB.getListSach();
                    request.setAttribute("listSach", listSach);
                        request.setAttribute("s", s);
                        request.getRequestDispatcher("/editSach.jsp").forward(request, response);
                } catch (Exception e) {
                }
            }else if(action.equals("Delete")){
                try {

                        Sach s = new Sach();
                        s=SachDB.getSachbyma(ma);
                        SachDB.delete(s);
                        request.setAttribute("clickXoa", "1");
                    List<Sach> listSach = SachDB.getListSach();
                    request.setAttribute("listSach", listSach);
                    
                    request.setAttribute("checkXoa", "1");
                        request.getRequestDispatcher("/LoadSachServlet").forward(request, response);
                } catch (Exception e) {
                }
            }else if(action.equals("Xem")){
                try {
                    NhanVien nhanVien= NhanVienDB.getNhanVienbyma(ma) ;
                    request.setAttribute("nhanVien", nhanVien);
                    request.getRequestDispatcher("/xemNhanVien.jsp").forward(request, response);
                } catch (Exception e) {
                }
            }
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
