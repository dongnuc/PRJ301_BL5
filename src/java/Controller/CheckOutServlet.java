/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAL.ProductDao;
import Model.Account;
import Model.Cart;
import Model.Item;
import Model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
@WebServlet(name = "CheckOutServlet", urlPatterns = {"/checkout"})
public class CheckOutServlet extends HttpServlet {

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
        
        String[] itemInfor = request.getParameterValues("items");

        PrintWriter out = response.getWriter();
        List<Item> listBuy = new ArrayList<>();

        if (itemInfor.length > 1) {
            for (String infor : itemInfor) {
                Item temp = handleString(infor);
                listBuy.add(temp);
            }
        } else {
            listBuy.add(handleString(itemInfor[0]));
        }
        Cart cart = new Cart();
        session.setAttribute("listbuy", listBuy);
        
        if (acc == null) {
            request.setAttribute("errorlogin", "You must be login to buy items");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }

        
        response.sendRedirect("Checkout.jsp");
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

    public Item handleString(String textItem) {
        String[] eachAtt = textItem.split(",");
        int id = Integer.parseInt(eachAtt[0]);
        ProductDao dao = new ProductDao();
        Product pro = dao.getProByID(id);
        int quantity = Integer.parseInt(eachAtt[1]);
        double price = Double.parseDouble(eachAtt[2]);
        double totalItem = quantity * price;
        return new Item(pro, quantity, price, totalItem);
    }

}
