<%-- 
    Document   : Detail.jsp
    Created on : Mar 4, 2024, 9:06:46 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <title>Downy Shoes an Ecommerce Category Bootstrap Responsive Website Template | Single :: w3layouts</title>
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
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
        <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
        <!-- Owl-carousel-CSS -->
        <link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- font-awesome-icons -->
        <link href="css/font-awesome.css" rel="stylesheet">
        <!-- //font-awesome-icons -->
        <link href="//fonts.googleapis.com/css?family=Montserrat:100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
              rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
        <style>
            .quan{
                width: 30px;
                height: 30px;
                border: 1px solid black;
                padding: 5px;
                align-items: center;
                text-align: center;
                margin: 0 10px;
            }
            .quan h4{
                margin: auto;

            }
            .buy-now{
                display: inline;
            }
        </style>
    </head>

    <body>
        <!-- banner -->
        <jsp:include page="Banner.jsp"/>

        <!-- //banner -->
        <!-- top Products -->
        <div class="ads-grid_shop">
            <div class="shop_inner_inf">
                <div class="col-md-4 single-right-left ">
                    <div class="grid images_3_of_2">
                        <div class="flexslider">
                            <ul class="slides">
                                <li data-thumb="images/d2.jpg">
                                    <div class="thumb-image"> <img src="${sessionScope.detailPro.image}" data-imagezoom="true" class="img-responsive"> </div>
                                </li>
                                <li data-thumb="images/d1.jpg">
                                    <div class="thumb-image"> <img src="images/d1.jpg" data-imagezoom="true" class="img-responsive"> </div>
                                </li>
                                <li data-thumb="images/d3.jpg">
                                    <div class="thumb-image"> <img src="images/d3.jpg" data-imagezoom="true" class="img-responsive"> </div>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 single-right-left simpleCart_shelfItem">
                    <h3>${sessionScope.detailPro.name}</h3>
                    <p><span class="item_price">$${sessionScope.detailPro.price}</span>
                        <del>$1,199</del>
                    </p>
                    <div class="rating1">
                        <ul class="stars">
                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    <div class="description">
                        <h5>Check delivery, payment options and charges at your location</h5>
                        <form action="#" method="post">
                            <input type="text" value="Enter pincode" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Enter pincode';
                                    }"
                                   required="">
                            <input type="submit" value="Check">
                        </form>
                    </div>
                    <div class="color-quality">
                        <div class="color-quality-right">
                            <h5>Quality :</h5>
                            <!--<select id="country1" onchange="change_country(this.value)" class="frm-field required sect">
                           <option value="null">5 Qty</option>
                            <option value="null">6 Qty</option> 
                            <option value="null">7 Qty</option>					
                            <option value="null">10 Qty</option>								
                               </select>--> 
                            <form action="handle" method="post" style="display: flex">
                                <button type="submit" name="quan" value="tru">-</button>
                                <div class="quan">
                                    <h4>${sessionScope.detailPro.quantity}</h4>
                                </div>
                                <button type="submit" name="quan" value="cong">+</button>
                            </form>


                        </div>
                    </div>
                    <div class="occasional">
                        <h5>Types :</h5>
                        <div class="colr ert">
                            <label class="radio"><input type="radio" name="radio" checked=""><i></i>Casual Shoes</label>
                        </div>
                        <div class="colr">
                            <label class="radio"><input type="radio" name="radio"><i></i>Sneakers </label>
                        </div>
                        <div class="colr">
                            <label class="radio"><input type="radio" name="radio"><i></i>Formal Shoes</label>
                        </div>
                        <div class="clearfix"> </div>
                    </div>

                    <!--add to cart-->
                    <div class="occasion-cart">
                        <div class="shoe single-item single_page_b">
                            <form action="cartadd" method="post">
                                <input type="hidden" name="idProC" value="${sessionScope.detailPro.id}">
                                <input type="hidden" name="quantityProC" value="${sessionScope.detailPro.quantity}">
                                <input type="hidden" name="shoe_item" value="Chikku Loafers">
                                <input type="hidden" name="amount" value="405.00">
                                <input type="submit" name="submit" value="Add to cart" class="button add">

                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>
                            </form>

                        </div>
                    </div>
                                <!--buy Now -->
                    <div class="occasion-cart buy-now">
                        <div class="shoe single-item single_page_b">
                            <form action="checkout" method="post">
                                <input type="hidden" name="items" value="${sessionScope.detailPro.id},${sessionScope.detailPro.quantity},${sessionScope.detailPro.price}">
                                <input type="submit" name="submit" value="   BUY NOW   " class="button add">
                                <a href="#" data-toggle="modal" data-target="#myModal1"></a>
                            </form>
                        </div>
                    </div>

                    <ul class="social-nav model-3d-0 footer-social social single_page">
                        <li class="share">Share On : </li>
                        <li>
                            <a href="#" class="facebook">
                                <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="twitter">
                                <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="instagram">
                                <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="pinterest">
                                <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                            </a>
                        </li>
                    </ul>

                </div>
                <div class="clearfix"> </div>
                <!--/tabs-->
                <div class="responsive_tabs">
                    <div id="horizontalTab">
                        <ul class="resp-tabs-list">
                            <li>Description</li>
                            <li>Reviews</li>
                            <li>Information</li>
                        </ul>
                        <div class="resp-tabs-container">
                            <!--/tab_one-->
                            <div class="tab1">

                                <div class="single_page">
                                    <h6>Lorem ipsum dolor sit amet</h6>
                                    <p>${detailPro.description}</p>
                                    <p class="para"></p>
                                </div>
                            </div>
                            <!--//tab_one-->
                            <div class="tab2">

                                <div class="single_page">
                                    <div class="bootstrap-tab-text-grids">
                                        <div class="bootstrap-tab-text-grid">
                                            <div class="bootstrap-tab-text-grid-left">
                                                <img src="images/t1.jpg" alt=" " class="img-responsive">
                                            </div>
                                            <div class="bootstrap-tab-text-grid-right">
                                                <ul>
                                                    <li><a href="#">Admin</a></li>
                                                    <li><a href="#"><i class="fa fa-reply-all" aria-hidden="true"></i> Reply</a></li>
                                                </ul>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget.Ut enim ad minima veniam,
                                                    quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis
                                                    autem vel eum iure reprehenderit.</p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                        <div class="add-review">
                                            <h4>add a review</h4>
                                            <form action="#" method="post">
                                                <input type="text" name="Name" required="Name">
                                                <input type="email" name="Email" required="Email">
                                                <textarea name="Message" required=""></textarea>
                                                <input type="submit" value="SEND">
                                            </form>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="tab3">

                                <div class="single_page">
                                    <h6>Shoe Rock Vision(SRV) Sneakers (Blue)</h6>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget nisl ullamcorper, molestie
                                        blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur adipisicing elit, sed do eiusmod tempor incididunt
                                        ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. labore et dolore
                                        magna aliqua.</p>
                                    <p class="para">Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget nisl ullamcorper, molestie
                                        blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur adipisicing elit, sed do eiusmod tempor incididunt
                                        ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. labore et dolore
                                        magna aliqua.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--//tabs-->
                <!-- /new_arrivals -->
                <div class="new_arrivals">
                    <h3>Featured Products</h3>
                    <!-- /womens -->
                    <c:forEach var="listMost" items="${listmost}">
                        <div class="col-md-3 product-men women_two">
                            <div class="product-shoe-info shoe">
                                <div class="men-pro-item">
                                    <div class="men-thumb-item">
                                        <img src="${listMost.image}" alt="">
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="detail?pId=${listMost.id}" class="link-product-add-cart">Quick View</a>
                                            </div>
                                        </div>
                                        <span class="product-new-top">New</span>
                                    </div>
                                    <div class="item-info-product">
                                        <h4>
                                            <a href="detail?pId=${listMost.id}">${listMost.name}</a>
                                        </h4>
                                        <div class="info-product-price">
                                            <div class="grid_meta">
                                                <div class="product_price">
                                                    <div class="grid-price ">
                                                        <span class="money ">$${listMost.price}</span>
                                                    </div>
                                                </div>
                                                <ul class="stars">
                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="shoe single-item hvr-outline-out">
                                                <form action="#" method="post">
                                                    <input type="hidden" name="cmd" value="_cart">
                                                    <input type="hidden" name="add" value="1">
                                                    <input type="hidden" name="shoe_item" value="Shuberry Heels">
                                                    <input type="hidden" name="amount" value="575.00">
                                                    <button type="submit" class="shoe-cart pshoe-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>

                                                    <a href="#" data-toggle="modal" data-target="#myModal1"></a>
                                                </form>

                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <!-- //womens -->
                    <div class="clearfix"></div>
                </div>
                <!--//new_arrivals-->


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
        <!--        <div class="newsletter_w3layouts_agile">
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
                </div>-->
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
//                                shoe.render();
//
//                                shoe.cart.on('shoe_checkout', function (evt) {
//                                    var items, len, i;
//
//                                    if (this.subtotal() > 0) {
//                                        items = this.items();
//
//                                        for (i = 0, len = items.length; i < len; i++) {
//                                        }
//                                    }
//                                });



    </script>
    <!-- //cart-js -->
    <!-- /nav -->
    <script src="js/modernizr-2.6.2.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/demo1.js"></script>
    <!-- //nav -->
    <!-- single -->
    <script src="js/imagezoom.js"></script>
    <!-- single -->
    <!-- script for responsive tabs -->
    <script src="js/easy-responsive-tabs.js"></script>
    <script>
                                $(document).ready(function () {
                                    $('#horizontalTab').easyResponsiveTabs({
                                        type: 'default', //Types: default, vertical, accordion           
                                        width: 'auto', //auto or any width like 600px
                                        fit: true, // 100% fit in a container
                                        closed: 'accordion', // Start closed if in accordion view
                                        activate: function (event) { // Callback function if tab is switched
                                            var $tab = $(this);
                                            var $info = $('#tabInfo');
                                            var $name = $('span', $info);
                                            $name.text($tab.text());
                                            $info.show();
                                        }
                                    });
                                    $('#verticalTab').easyResponsiveTabs({
                                        type: 'vertical',
                                        width: 'auto',
                                        fit: true
                                    });
                                });



    </script>
    <!-- FlexSlider -->
    <script src="js/jquery.flexslider.js"></script>
    <script>
                                // Can also be used with $(document).ready()
                                $(window).load(function () {
                                    $('.flexslider').flexslider({
                                        animation: "slide",
                                        controlNav: "thumbnails"
                                    });
                                });
    </script>
    <!-- //FlexSlider-->

    <!--search-bar-->
    <script src="js/search.js"></script>
    <!--//search-bar-->
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
