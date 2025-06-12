/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAL.ProductDao;
import Model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author Admin
 */
@WebServlet(name = "LoadMoreServlet", urlPatterns = {"/loadmore"})
public class LoadMoreServlet extends HttpServlet {

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
        response.setCharacterEncoding("UTF-8");
        String exist_raw = request.getParameter("exist");
        int exist = Integer.parseInt(exist_raw);
        ProductDao dao = new ProductDao();
        List<Product> list = dao.getProNext(exist);
        PrintWriter out = response.getWriter();
        for (Product product : list) {
            out.println("<div class=\"product-length col-md-4 product-men\">\n"
                    + "                                    <div class=\"product-shoe-info shoe\">\n"
                    + "                                        <div class=\"men-pro-item\">\n"
                    + "                                            <div class=\"men-thumb-item\">\n"
                    + "                                                <img src=\""+product.getImage()+"\" alt=\"\">\n"
                    + "                                                <div class=\"men-cart-pro\">\n"
                    + "                                                    <div class=\"inner-men-cart-pro\">\n"
                    + "                                                        <a href=\"detail?pId="+product.getId()+"\" class=\"link-product-add-cart\">Quick View</a>\n"
                    + "                                                    </div>\n"
                    + "                                                </div>\n"
                    + "                                                <span class=\"product-new-top\">New</span>\n"
                    + "                                            </div>\n"
                    + "                                            <div class=\"item-info-product\">                                            \n"
                    + "                                                <h4>\n"
                    + "                                                    <a href=\"detail?pId="+product.getId()+"\">"+product.getName()+" </a>\n"
                    + "                                                </h4>\n"
                    + "                                                <div class=\"info-product-price\">\n"
                    + "                                                    <div class=\"grid_meta\">\n"
                    + "                                                        <div class=\"product_price\">\n"
                    + "                                                            <div class=\"grid-price \">\n"
                    + "                                                                <span class=\"money \">"+product.getPrice()+"$</span>\n"
                    + "                                                            </div>\n"
                    + "                                                        </div>\n"
                    + "                                                        <ul class=\"stars\">\n"
                    + "                                                            <li><a href=\"#\"><i class=\"fa fa-star\" aria-hidden=\"true\"></i></a></li>\n"
                    + "                                                            <li><a href=\"#\"><i class=\"fa fa-star\" aria-hidden=\"true\"></i></a></li>\n"
                    + "                                                            <li><a href=\"#\"><i class=\"fa fa-star\" aria-hidden=\"true\"></i></a></li>\n"
                    + "                                                            <li><a href=\"#\"><i class=\"fa fa-star-half-o\" aria-hidden=\"true\"></i></a></li>\n"
                    + "                                                            <li><a href=\"#\"><i class=\"fa fa-star-o\" aria-hidden=\"true\"></i></a></li>\n"
                    + "                                                        </ul>\n"
                    + "                                                    </div>\n"
                    + "                                                    <div class=\"shoe single-item hvr-outline-out\">\n"
                    + "                                                        <form action=\"cartadd\" method=\"post\">\n"
                    + "                                                            <input type=\"hidden\" name=\"idProC\" value=\""+product.getId()+"\">\n"
                    + "                                                            <input type=\"hidden\" name=\"quantityProC\" value=\"1\">\n"
                    + "<!--                                                            <input type=\"hidden\" name=\"nameProC\" value=\"${listPro.name}\">-->\n"
                    + "<!--                                                            <input type=\"hidden\" name=\"priceProC\" value=\"${listPro.price}\">-->\n"
                    + "<!--                                                            <input type=\"hidden\" name=\"imageProC\" value=\"${listPro.image}\">-->\n"
                    + "                                                            <button type=\"submit\" class=\"shoe-cart pshoe-cart\"><i class=\"fa fa-cart-plus\" aria-hidden=\"true\"></i></button>\n"
                    + "                                                            <a href=\"#\" data-toggle=\"modal\" data-target=\"#myModal1\"></a>\n"
                    + "                                                        </form>\n"
                    + "                                                        <!--                                                        <button class=\"shoe-cart pshoe-cart\">\n"
                    + "                                                                                                                    <a style=\"list-style-type: none\" href=\"Cart.jsp\"><i class=\"fa fa-cart-plus\" aria-hidden=\"true\"></i> </a>                        \n"
                    + "                                                                                                                </button>-->\n"
                    + "                                                    </div>\n"
                    + "\n"
                    + "\n"
                    + "                                                </div>\n"
                    + "                                                <div class=\"clearfix\"></div>\n"
                    + "                                            </div>\n"
                    + "                                        </div>\n"
                    + "                                    </div>\n"
                    + "                                </div>");
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
