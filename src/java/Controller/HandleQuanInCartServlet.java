/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Cart;
import Model.Item;
import Model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author Admin
 */
@WebServlet(name = "HandleQuanInCartServlet", urlPatterns = {"/handlecart"})
public class HandleQuanInCartServlet extends HttpServlet {

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
        String plus = request.getParameter("quan");
        String id_raw = request.getParameter("id");
        int id = Integer.parseInt(id_raw);
        HttpSession session = request.getSession();
        List<Item> listcart = (List<Item>) session.getAttribute("listcart");
        
        PrintWriter out = response.getWriter();

        for (Item pro : listcart) {
            if (pro.getPro().getId() == id) {
                if (plus.equals("cong")) {
                    pro.setQuantity(pro.getQuantity() + 1);
                    out.println(pro.getQuantity());
                } else if (plus.equals("tru")) {
                    if (pro.getQuantity() > 1) {
                        pro.setQuantity(pro.getQuantity() - 1);
                        out.println(pro.getQuantity());
                    }
                }
                break;
            }
        }
        
        
        Cart cart = new Cart();
        String cartAll = cart.convertListToS(listcart);
        Cookie cok = new Cookie("cartAll", cartAll);     
        cok.setMaxAge(60);
        response.addCookie(cok);
        session.setAttribute("listcart", listcart);
        request.getRequestDispatcher("Cart.jsp").forward(request, response);
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
