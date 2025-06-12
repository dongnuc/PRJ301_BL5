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
@WebServlet(name = "AddToCartServlet", urlPatterns = {"/cartadd"})
public class AddToCartServlet extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        String id_raw = request.getParameter("idProC");
        String quantity_raw = request.getParameter("quantityProC");
        
        int id = Integer.parseInt(id_raw);
        int quantity = Integer.parseInt(quantity_raw);
        
        ProductDao dao = new ProductDao();
        Product proTemp = dao.getProByID(id);
        Item itemChoice = new Item(proTemp, quantity, proTemp.getPrice());
       
        HttpSession session = request.getSession();

        String cookieCart = "";
        Cookie[] getCok = request.getCookies();
        if (getCok != null) {
            for (Cookie cookie : getCok) {
                if (cookie.getName().equals("cartAll")) {
                    cookieCart += cookie.getValue();
                    break;
                }
            }
        }
        
        Cart cart = new Cart();
         boolean itemIsCart = false;
        List<Item> listItemCart = cart.convertStringToC(cookieCart);
        for (Item item : listItemCart) {
            if(item.getPro().getId() == id){
                item.setQuantity(quantity + item.getQuantity());
                itemIsCart = true;
                break;
            }
        }
        
        if(!itemIsCart){
            listItemCart.add(itemChoice);
        }
        
        cookieCart = cart.convertListToS(listItemCart);
        
       

//        Account acc = (Account) session.getAttribute("acc");
//        if (acc == null) {
//            request.setAttribute("errorlogin", "you must be login to purchase");
//            request.getRequestDispatcher("Login.jsp").forward(request, response);
//        }
        Cookie cookieCa = new Cookie("cartAll", cookieCart);
        cookieCa.setMaxAge(60);
        session.setAttribute("listCart", listItemCart);
        response.addCookie(cookieCa);
        response.sendRedirect("show");
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
