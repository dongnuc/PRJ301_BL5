<%-- 
    Document   : Cart
    Created on : Mar 5, 2024, 10:31:52 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <title>JSP Page</title>
        <link href="css/cart.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <style>
            /* CSS for table */
            table {
                border-collapse: collapse;
                width: 100%;
            }

            /* CSS for table headers */
            th {
                background-color: #f2f2f2;
                text-align: left;
                padding: 8px;
            }

            /* CSS for table data */
            td {
                padding: 8px;
                text-align: left;
            }

            /* CSS for table data containing image */
            td img {
                max-width: 100px;
                height: auto;
            }

            /* CSS for quantity adjustment links */
            .quantity-adjustment a {
                text-decoration: none;
                color: #333;
                padding: 2px 5px;
                border: 1px solid #ccc;
                border-radius: 3px;
            }

            /* CSS for delete icon */
            .close {
                cursor: pointer;
                color: red;
                margin: auto;
            }
            .btn {
                display: inline-block;
                padding: 10px 20px;
                background-color: #333; /* Màu nền của nút */
                color: #fff; /* Màu chữ */
                font-size: 16px;
                font-weight: bold;
                text-align: center;
                text-decoration: none;
                border: none;
                border-radius: 5px; /* Bo tròn viền nút */
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            .btn:hover {
                background-color: #333; /* Màu nền của nút khi hover */
            }


        </style>

    </head>




    <body>
        <div class="card">
            <div class="row">
                <div class="col-md-12 cart">
                    <div class="title">
                        <div class="row">
                            <div class="col"><h4><b>Shopping Cart</b></h4></div>
                            <div class="col align-self-center text-right text-muted">${sessionScope.listCart.size()} items</div>
                        </div>
                    </div>    
                    <!--item temp-->
                    <!--                    <div class="row border-top border-bottom">
                                                <div class="row main align-items-center">
                                                    <div class="col-2"><img class="img-fluid" src="https://i.imgur.com/1GrakTl.jpg"></div>
                                                    <div class="col">
                                                        <div class="row text-muted">Shirt</div>
                                                        <div class="row">Cotton T-shirt</div>
                                                    </div>
                                                    <div class="col">
                                                        <a href="#">-</a><a href="#" class="border">1</a><a href="#">+</a>
                                                    </div>
                                                    <div class="col">&euro; 44.00 <span class="close">&#10005;</span></div>
                                                </div>
                                            </div>-->
                    <!--item temp end-->

                    <!--item show-->
                    <form action="checkout" method="post">
                        <table border = "1px" width = "50%" >
                            <tr>
                                <td>Items</td>
                                <td>Name</td>
                                <td>Image</td>
                                <td>Quantity</td>
                                <td>Price</td>
                                <td>select</td>
                            </tr>
                            <c:forEach var="listcart" items="${sessionScope.listcart}">

                                <tr>
                                    <td>
                                        <input name="items" value="${listcart.pro.id},${listcart.quantity},${listcart.price}" type="checkbox">
                                    </td>
                                    <td>${listcart.pro.name}</td>
                                    <td> <img class="img-fluid" src="${listcart.pro.image}"></td>
                                    <td>
                                        <a href="handlecart?quan=tru&id=${listcart.pro.id}">-</a><a href="#" class="border">${listcart.quantity}</a><a href="handlecart?quan=cong&id=${listcart.pro.id}">+</a>
                                    </td>
                                    <td>${listcart.price}</td>
                                    <td>
                                        <!--<span class="close">&#10005;</span>-->
                                        <a class="close" href="deleteCart?idCart=${listcart.pro.id}">&#10005;</a>
                                    </td>

                                </tr>
                            </c:forEach>
                        </table>
                        <button class="btn">CHECKOUT</button>
                    </form>
                    <div class="back-to-shop"><a href="show">&leftarrow;</a><span class="text-muted">Back to shop</span></div>
                </div>
                <!--                <div class="col-md-4 summary">
                                    <div><h5><b>Summary</b></h5></div>
                                    <hr>
                                    <div class="row">
                                        <div class="col" style="padding-left:10px;">${sessionScope.listCart.size()} items</div>
                
                                        <div class="col text-right">&euro; </div>
                                    </div>
                                    <form>
                                        <p>SHIPPING</p>
                                        <select><option class="text-muted">Standard-Delivery- Free</option></select>
                                        <p>GIVE CODE</p>
                                        <input id="code" placeholder="Enter your code">
                                    </form>
                                    <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                                        <div class="col">TOTAL PRICE</div>
                                        <div class="col text-right">&euro; 137.00</div>
                                    </div>
                                    <form>
                                        <button class="btn">CHECKOUT</button>
                                    </form>
                                </div>-->
            </div>

        </div>
    </body>
</html>
