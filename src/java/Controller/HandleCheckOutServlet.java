/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAL.OrderDao;
import DAL.OrderDetailDao;
import DAL.ProductDao;
import Model.Account;
import Model.Item;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Admin
 */
@WebServlet(name = "HandleCheckOutServlet", urlPatterns = {"/handlecheckout"})
public class HandleCheckOutServlet extends HttpServlet {

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
        HttpSession session = request.getSession();
        Account acc = (Account) session.getAttribute("acc");

        List<Item> listBuy = (List<Item>) session.getAttribute("listbuy");
        Date dateBuy = new Date();
        OrderDetailDao daoOrderdetail = new OrderDetailDao();
        ProductDao daoPro = new ProductDao();
        double total = 0;
        for (Item item : listBuy) {     
            int quantityNow = item.getPro().getQuantity() - item.getQuantity();
            daoPro.updateQuantity(quantityNow,item.getPro().getId());
            total += item.getTotal();
        }
        OrderDao daoOrder = new OrderDao();
        int idBill = daoOrder.countBill() + 1;
        daoOrder.insertOrder(idBill, acc.getId(), dateBuy, total);
        for (Item item : listBuy) {
            daoOrderdetail.insertOrderDetail(idBill, item.getPro().getId(), item.getQuantity(), item.getPrice());
            total += item.getTotal();
        }
        
        
        
        session.removeAttribute("listbuy");
        response.sendRedirect("payment.jsp");
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
