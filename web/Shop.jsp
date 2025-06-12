<%-- 
    Document   : Shop
    Created on : Mar 3, 2024, 2:56:35 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <title>Downy Shoes an Ecommerce Category Bootstrap Responsive Website Template | Shop :: w3layouts</title>
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
        <link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
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
                <!-- tittle heading -->

                <!-- //tittle heading -->
                <!-- product left -->
                <div class="side-bar col-md-3">
                    <div class="search-hotel">
                        <h3 class="agileits-sear-head">Search Here..</label</h3>
                        <form action="search" method="post">
                            <input type="search" oninput="searchByName(this)" value="${nameSearch}" placeholder="Product name..." name="search" required=""/>
                            <input type="submit" value=" "/>
                        </form>
                    </div>
                    <!-- price range -->
                    <div class="range">
                        <h3 class="agileits-sear-head">Price range</h3>
                        <ul class="dropdown-menu6">
                            <li>
                                <div id="slider-range"></div>
                                <input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
                            </li>
                        </ul>
                    </div>
                    <!-- //price range -->
                    <!--preference -->
                    <div class="left-side">
                        <h3 class="agileits-sear-head">Category</h3>
                        <ul>
                            <c:forEach var="listCate" items="${listCate}">
                                <li>
                                    <span class="span">
                                        <a href="category?cId=${listCate.idCate}">${listCate.nameCate}</a>
                                    </span>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <!-- // preference -->
                    <!-- discounts -->
                    <div class="left-side">
                        <h3 class="agileits-sear-head">Discount</h3>
                        <ul>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">5% or More</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">10% or More</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">20% or More</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">30% or More</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">50% or More</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">60% or More</span>
                            </li>
                        </ul>
                    </div>
                    <!-- //discounts -->
                    <!-- reviews -->
                    <div class="customer-rev left-side">
                        <h3 class="agileits-sear-head">Customer Review</h3>
                        <ul>
                            <li>
                                <a href="#">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <span>5.0</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                    <span>4.0</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                    <span>3.5</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                    <span>3.0</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                    <span>2.5</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- //reviews -->

                    <!--Best selling product-->
                    <!-- deals -->
                    <div class="deal-leftmk left-side">
                        <h3 class="agileits-sear-head">Best Selling</h3>
                        <c:forEach items="${listTopSell}" var="topSell">
                            <div class="special-sec1">
                                <div class="col-xs-4 img-deals">
                                    <img src="${topSell.image}" alt="">
                                </div>
                                <div class="col-xs-8 img-deal1">
                                    <h3><a href="detail?pId=${topSell.id}">${topSell.name}</a> </h3>
                                    <a href="detail?pId=${topSell.id}">${topSell.price}</a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </c:forEach>                      
                    </div>
                    <!-- //deals -->


                </div>
                <!-- //product left -->
                <!-- product right -->
                <div  class="left-ads-display col-md-9">
                    <div class="wrapper_top_shop">
                        <div class="col-md-6 shop_left">
                            <img src="images/banner3.jpg" alt="">
                            <h6>40% off</h6>
                        </div>
                        <div class="col-md-6 shop_right">
                            <img src="images/banner2.jpg" alt="">
                            <h6>50% off</h6>
                        </div>
                        <div class="clearfix"></div>
                        <!-- product-sec1 -->
                        <!--load Product-->
                        <div id="loadPro" class="product-sec1">
                            <!--/mens-->


                            <c:forEach var="listPro" items="${listp}">
                                <div class="product-length col-md-4 product-men">
                                    <div class="product-shoe-info shoe">
                                        <div class="men-pro-item">
                                            <div class="men-thumb-item">
                                                <img src="${listPro.image}" alt="">
                                                <div class="men-cart-pro">
                                                    <div class="inner-men-cart-pro">
                                                        <a href="detail?pId=${listPro.id}" class="link-product-add-cart">Quick View</a>
                                                    </div>
                                                </div>
                                                <span class="product-new-top">New</span>
                                            </div>
                                            <div class="item-info-product">                                            
                                                <h4>
                                                    <a href="detail?pId=${listPro.id}">${listPro.name} </a>
                                                </h4>
                                                <div class="info-product-price">
                                                    <div class="grid_meta">
                                                        <div class="product_price">
                                                            <div class="grid-price ">
                                                                <span class="money ">${listPro.price}$</span>
                                                            </div>
                                                        </div>
                                                        <ul class="stars">
                                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="shoe single-item hvr-outline-out">
                                                        <form action="cartadd" method="post">
                                                            <input type="hidden" name="idProC" value="${listPro.id}">
                                                            <input type="hidden" name="quantityProC" value="1">
<!--                                                            <input type="hidden" name="nameProC" value="${listPro.name}">-->
<!--                                                            <input type="hidden" name="priceProC" value="${listPro.price}">-->
<!--                                                            <input type="hidden" name="imageProC" value="${listPro.image}">-->
                                                            <button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>
                                                            <a href="#" data-toggle="modal" data-target="#myModal1"></a>
                                                        </form>
                                                        <!--                                                        <button class="shoe-cart pshoe-cart">
                                                                                                                    <a style="list-style-type: none" href="Cart.jsp"><i class="fa fa-cart-plus" aria-hidden="true"></i> </a>                        
                                                                                                                </button>-->
                                                    </div>


                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                            <div class="clearfix"></div>

                        </div>
                        <button style="margin-top:10px" id="load-more" onclick="loadMore()">Load More</button>
                        <!-- //product-sec1 -->
                        <div style="margin-top: 53px;" class="col-md-6 shop_left shp">
                            <img src="images/banner4.jpg" alt="">
                            <h6>21% off</h6>
                        </div>
                        <div class="col-md-6 shop_right shp">
                            <img src="images/banner1.jpg" alt="">
                            <h6>31% off</h6>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //top products -->
        <div class="mid_slider_w3lsagile">
            <div class="col-md-3 mid_slider_text">
                <h5>Some More Shoes</h5>
            </div>
            <div class="col-md-9 mid_slider_info">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class=""></li>
                        <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="2" class=""></li>
                        <li data-target="#myCarousel" data-slide-to="3" class=""></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="item">
                            <div class="row">
                                <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                    <div class="thumbnail"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></div>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                    <div class="thumbnail"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></div>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                    <div class="thumbnail"><img src="images/g3.jpg" alt="Image" style="max-width:100%;"></div>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                    <div class="thumbnail"><img src="images/g4.jpg" alt="Image" style="max-width:100%;"></div>
                                </div>
                            </div>
                        </div>
                        <div class="item active">
                            <div class="row">
                                <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                    <div class="thumbnail"><img src="images/g5.jpg" alt="Image" style="max-width:100%;"></div>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                    <div class="thumbnail"><img src="images/g6.jpg" alt="Image" style="max-width:100%;"></div>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                    <div class="thumbnail"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></div>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                    <div class="thumbnail"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="row">
                                <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                    <div class="thumbnail"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></div>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                    <div class="thumbnail"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></div>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                    <div class="thumbnail"><img src="images/g3.jpg" alt="Image" style="max-width:100%;"></div>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                    <div class="thumbnail"><img src="images/g4.jpg" alt="Image" style="max-width:100%;"></div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="row">
                                <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                    <div class="thumbnail"><img src="images/g1.jpg" alt="Image" style="max-width:100%;"></div>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                    <div class="thumbnail"><img src="images/g2.jpg" alt="Image" style="max-width:100%;"></div>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                    <div class="thumbnail"><img src="images/g3.jpg" alt="Image" style="max-width:100%;"></div>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-3 slidering">
                                    <div class="thumbnail"><img src="images/g4.jpg" alt="Image" style="max-width:100%;"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                        <span class="fa fa-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                        <span class="fa fa-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                    <!-- The Modal -->

                </div>
            </div>

            <div class="clearfix"> </div>
        </div>
        <!-- /newsletter-->
        <div class="newsletter_w3layouts_agile">
            <div class="col-sm-6 newsleft">
                <h3>Sign up for Newsletter !</h3>
            </div>
            <div class="col-sm-6 newsright">
                <form action="#" method="post">
                    <input type="email" placeholder="Enter your email..." name="email" required="">
                    <input type="submit" value="Submit">
                </form>
            </div>

            <div class="clearfix"></div>
        </div>
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
//        shoe.render();
//
//        shoe.cart.on('shoe_checkout', function (evt) {
//            var items, len, i;
//
//            if (this.subtotal() > 0) {
//                items = this.items();
//
//                for (i = 0, len = items.length; i < len; i++) {
//                }
//            }
//        });
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
    <!-- price range (top products) -->
    <script src="js/jquery-ui.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script>
                            //<![CDATA[ 
                            $(window).load(function () {
                                $("#slider-range").slider({
                                    range: true,
                                    min: 0,
                                    max: 9000,
                                    values: [50, 6000],
                                    slide: function (event, ui) {
                                        $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
                                    }
                                });
                                $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));
                            }); //]]>

                            function searchByName(txtInput) {
                                var valueInput = txtInput.value;
                                $.ajax({
                                    url: "/assigment/searchjax",
                                    type: "get", //send it through get method
                                    data: {
                                        search: valueInput
                                    },
                                    success: function (response) {
                                        var row = document.getElementById("loadPro");
                                        row.innerHTML = response;
                                    },
                                    error: function (xhr) {
                                        //Do Something to handle error

                                    }
                                });
                            }

                            function loadMore() {
                                var amount = document.getElementsByClassName("product-length").length;
                                console.log('amount:', amount);
                                $.ajax({
                                    url: "/assigment/loadmore",
                                    type: "get", //send it through get method
                                    data: {
                                        exist: amount
                                    },
                                    success: function (response) {
                                        var insert = document.getElementById("loadPro");
                                        insert.innerHTML += response;
                                    },
                                    error: function (xhr) {
                                        //Do Something to handle error

                                    }
                                });
                            }
    </script>
    <!-- //price range (top products) -->

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
