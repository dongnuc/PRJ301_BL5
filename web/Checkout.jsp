<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <title>Downy Shoes an Ecommerce Category Bootstrap Responsive Website Template | Check Out :: w3layouts</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Downy Shoes Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript">
            addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
            window.scrollTo(0, 1);
            }
        </script>
        <!-- //custom-theme -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="css/shop.css" type="text/css" media="screen" property="" />
        <link href="css/style7.css" rel="stylesheet" type="text/css" media="all" />
        <!-- Owl-carousel-CSS -->
        <link rel="stylesheet" type="text/css" href="css/checkout.css">
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- font-awesome-icons -->
        <link href="css/font-awesome.css" rel="stylesheet">
        <!-- //font-awesome-icons -->
        <link href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
              rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
    </head>

    <body>
        <!-- banner -->
        <jsp:include page="Banner.jsp"/>

        <!-- //banner -->
        <!-- top Products -->
        <div class="ads-grid_shop">
            <div class="shop_inner_inf">
                <div class="privacy about">
                    <h3>Chec<span>k out</span></h3>

                    <div class="checkout-right">
                        <h4>Your shopping cart contains: <span>${sessionScope.listbuy.size()} Products</span></h4>
                        <table class="timetable_sub">
                            <thead>
                                <tr>
                                    <th>SL No.</th>
                                    <th>Product</th>
                                    <th>Quality</th>
                                    <th>Product Name</th>

                                    <th>Price</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:set var="itemPro" value="0"/>
                                <c:forEach var="listbuy" items="${sessionScope.listbuy}">
                                    <c:set var="itemPro" value="${itemPro + 1}" />
                                    <tr class="rem1">
                                        <td class="invert">${itemPro}</td>
                                        <td class="invert-image"><a href="single.html"><img src="${listbuy.pro.image}" alt=" " class="img-responsive"></a></td>
                                        <td class="invert">
                                            <div class="quantity">
                                                <div class="quantity-select">         
                                                    <div class="entry value"><span>${listbuy.quantity}</span></div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="invert">${listbuy.pro.name}</td>

                                        <td class="invert">$${listbuy.total}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="checkout-left">
                        <div class="col-md-4 checkout-left-basket">
                            <h4>Continue to basket</h4>
                            <ul>
                                <c:set var="itemIndex" value="0"/>
                                <c:forEach var="list" items="${sessionScope.listbuy}">
                                    <c:set var="itemIndex" value="${itemIndex + 1}" />
                                    <c:set var="totalBill" value="${totalBill + list.total}" />
                                    <li>Product ${itemIndex} <i>-</i> <span>${list.total}</span></li>  
                                    
                                </c:forEach>
                                <li>Total <i>-</i> <span>$${totalBill}</span></li>
                            </ul>
                        </div>
                        <div class="col-md-8 address_form">
                            <h4>Add a new Details</h4>
                            <form action="handlecheckout" method="post" class="creditly-card-form agileinfo_form">
                                <section class="creditly-wrapper wrapper">
                                    <div class="information-wrapper">
                                        <div class="first-row form-group">
                                            <div class="controls">
                                                <label class="control-label">Tên: </label>
                                                <input class="billing-address-name form-control" required type="text" name="name" placeholder="Tên">
                                            </div>
                                            <div class="card_number_grids">
                                                <div class="card_number_grid_left">
                                                    <div class="controls">
                                                        <label class="control-label">SĐT:</label>
                                                        <input class="form-control" required type="text" placeholder="SĐT">
                                                    </div>
                                                </div>
                                                <div class="card_number_grid_right">
                                                    <div class="controls">
                                                        <label class="control-label">Tỉnh/Thành Phố:</label>
                                                        <input class="form-control" required type="text" placeholder="Tỉnh/Thành Phố">
                                                    </div>
                                                </div>
                                                <div class="clear"> </div>
                                            </div>
                                            <div class="controls">
                                                <label class="control-label">Huyện: </label>
                                                <input class="form-control" required type="text" placeholder="Huyện">
                                            </div>
                                            <div class="controls">
                                                <label class="control-label">Xã/Phường </label>
                                                <input class="form-control" required type="text" placeholder="Town/City">
                                            </div>
                                            <div class="controls">
                                                <label class="control-label">Số nhà:</label>
                                                <input class="form-control" required type="text" placeholder="01 Đường...">
                                            </div>
<!--                                            <div class="controls">
                                                <label class="control-label">Address type: </label>
                                                <select class="form-control option-w3ls">
                                                    <option>Office</option>
                                                    <option>Home</option>
                                                    <option>Commercial</option>

                                                </select>
                                            </div>-->
                                        </div>
  
                                        
                                        
                                        <button type="submit" class="submit check_out">Delivery to this Address</button>
                                    </div>
                                </section>
                            </form>
                            <div class="checkout-right-basket">
                                <a href="#">Make a Payment </a>
                            </div>
                        </div>

                        <div class="clearfix"> </div>


                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <!-- //top products -->
            <jsp:include page="SomeMoreShoes.jsp"/>
            <!-- //newsletter-->
            <!-- footer -->
            <jsp:include page="Footer.jsp"/>
        </div>
        <!-- //footer -->
        <a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
        <!-- js -->
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <!-- //js -->
        <!-- cart-js -->
        <script src="js/minicart.js"></script>
        <script>
            shoe.render();

            shoe.cart.on('shoe_checkout', function (evt) {
                var items, len, i;

                if (this.subtotal() > 0) {
                    items = this.items();

                    for (i = 0, len = items.length; i < len; i++) {
                    }
                }
            });
        </script>
        <!-- //cart-js -->
        <!-- /nav -->
        <script src="js/modernizr-2.6.2.min.js"></script>
        <script src="js/classie.js"></script>
        <script src="js/demo1.js"></script>
        <!-- //nav -->
        <!--search-bar-->
        <script src="js/search.js"></script>
        <!--//search-bar-->
        <!--quantity-->
        <script>
            $('.value-plus').on('click', function () {
                var divUpd = $(this).parent().find('.value'),
                        newVal = parseInt(divUpd.text(), 10) + 1;
                divUpd.text(newVal);
            });

            $('.value-minus').on('click', function () {
                var divUpd = $(this).parent().find('.value'),
                        newVal = parseInt(divUpd.text(), 10) - 1;
                if (newVal >= 1)
                    divUpd.text(newVal);
            });
        </script>
        <!--quantity-->
        <script>
            $(document).ready(function (c) {
                $('.close1').on('click', function (c) {
                    $('.rem1').fadeOut('slow', function (c) {
                        $('.rem1').remove();
                    });
                });
            });
        </script>
        <script>
            $(document).ready(function (c) {
                $('.close2').on('click', function (c) {
                    $('.rem2').fadeOut('slow', function (c) {
                        $('.rem2').remove();
                    });
                });
            });
        </script>
        <script>
            $(document).ready(function (c) {
                $('.close3').on('click', function (c) {
                    $('.rem3').fadeOut('slow', function (c) {
                        $('.rem3').remove();
                    });
                });
            });
        </script>

        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({
                        scrollTop: $(this.hash).offset().top
                    }, 1000);
                });
            });
        </script>
        <!-- //end-smoth-scrolling -->
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>


    </body>

</html>