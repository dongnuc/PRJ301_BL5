<%-- 
    Document   : payment
    Created on : Mar 10, 2024, 4:11:51 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <title>Downy Shoes an Ecommerce Category Bootstrap Responsive Website Template | Paymennt :: w3layouts</title>
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
        <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />

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
                    <h3>Pay<span>ment</span></h3>
                    <!--/tabs-->
                    <div class="responsive_tabs">
                        <div id="horizontalTab">
                            <ul class="resp-tabs-list">
                                <li>Cash on delivery (COD)</li>
                                <li>Credit/Debit</li>
                                <li>Net Banking</li>
                                <li>Paypal Account</li>
                            </ul>
                            <div class="resp-tabs-container">
                                <!--/tab_one-->
                                <div class="tab1">
                                    <div class="pay_info">
                                        <div class="vertical_post check_box_agile">
                                            <h5>COD</h5>
                                            <div class="checkbox">
                                                <div class="check_box_one cashon_delivery">
                                                    <label class="anim">
                                                        <input type="checkbox" class="checkbox">
                                                        <span> We also accept Credit/Debit card on delivery. Please Check with the agent.</span> 
                                                    </label>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <!--//tab_one-->
                                <div class="tab2">
                                    <div class="pay_info">
                                        <form action="#" method="post" class="creditly-card-form agileinfo_form">
                                            <section class="creditly-wrapper wthree, w3_agileits_wrapper">
                                                <div class="credit-card-wrapper">
                                                    <div class="first-row form-group">
                                                        <div class="controls">
                                                            <label class="control-label">Name on Card</label>
                                                            <input class="billing-address-name form-control" type="text" name="name" placeholder="John Smith">
                                                        </div>
                                                        <div class="w3_agileits_card_number_grids">
                                                            <div class="w3_agileits_card_number_grid_left">
                                                                <div class="controls">
                                                                    <label class="control-label">Card Number</label>
                                                                    <input class="number credit-card-number form-control" type="text" name="number" inputmode="numeric" autocomplete="cc-number"
                                                                           autocompletetype="cc-number" x-autocompletetype="cc-number" placeholder="&#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149;">
                                                                </div>
                                                            </div>
                                                            <div class="w3_agileits_card_number_grid_right">
                                                                <div class="controls">
                                                                    <label class="control-label">CVV</label>
                                                                    <input class="security-code form-control" Â· inputmode="numeric" type="text" name="security-code" placeholder="&#149;&#149;&#149;">
                                                                </div>
                                                            </div>
                                                            <div class="clear"> </div>
                                                        </div>
                                                        <div class="controls">
                                                            <label class="control-label">Expiration Date</label>
                                                            <input class="expiration-month-and-year form-control" type="text" name="expiration-month-and-year" placeholder="MM / YY">
                                                        </div>
                                                    </div>
                                                    <button class="submit"><span>Make a payment </span></button>
                                                </div>
                                            </section>
                                        </form>

                                    </div>
                                </div>
                                <div class="tab3">

                                    <div class="pay_info">
                                        <div class="vertical_post">
                                            <form action="#" method="post">
                                                <h5>Select From Popular Banks</h5>
                                                <div class="swit-radio">
                                                    <div class="check_box_one">
                                                        <div class="radio_one"> <label><input type="radio" name="radio" checked=""><i></i>Syndicate Bank</label> </div>
                                                    </div>
                                                    <div class="check_box_one">
                                                        <div class="radio_one"> <label><input type="radio" name="radio"><i></i>Bank of Baroda</label> </div>
                                                    </div>
                                                    <div class="check_box_one">
                                                        <div class="radio_one"> <label><input type="radio" name="radio"><i></i>Canara Bank</label> </div>
                                                    </div>
                                                    <div class="check_box_one">
                                                        <div class="radio_one"> <label><input type="radio" name="radio"><i></i>ICICI Bank</label> </div>
                                                    </div>
                                                    <div class="check_box_one">
                                                        <div class="radio_one"> <label><input type="radio" name="radio"><i></i>State Bank Of India</label> </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </div>
                                                <h5>Or SELECT OTHER BANK</h5>
                                                <div class="section_room_pay">
                                                    <select class="year"><option value="">=== Other Banks ===</option><option value="ALB-NA">Allahabad Bank NetBanking</option><option value="ADB-NA">Andhra Bank</option><option value="BBK-NA">Bank of Bahrain and Kuwait NetBanking</option><option value="BBC-NA">Bank of Baroda Corporate NetBanking</option><option value="BBR-NA">Bank of Baroda Retail NetBanking</option><option value="BOI-NA">Bank of India NetBanking</option><option value="BOM-NA">Bank of Maharashtra NetBanking</option><option value="CSB-NA">Catholic Syrian Bank NetBanking</option><option value="CBI-NA">Central Bank of India</option><option value="CUB-NA">City Union Bank NetBanking</option><option value="CRP-NA">Corporation Bank</option><option value="DBK-NA">Deutsche Bank NetBanking</option><option value="DCB-NA">Development Credit Bank</option><option value="DC2-NA">Development Credit Bank - Corporate</option><option value="DLB-NA">Dhanlaxmi Bank NetBanking</option><option value="FBK-NA">Federal Bank NetBanking</option><option value="IDS-NA">Indusind Bank NetBanking</option><option value="IOB-NA">Indian Overseas Bank</option><option value="ING-NA">ING Vysya Bank (now Kotak)</option><option value="JKB-NA">Jammu and Kashmir NetBanking</option><option value="JSB-NA">Janata Sahakari Bank Limited</option><option value="KBL-NA">Karnataka Bank NetBanking</option><option value="KVB-NA">Karur Vysya Bank NetBanking</option><option value="LVR-NA">Lakshmi Vilas Bank NetBanking</option><option value="OBC-NA">Oriental Bank of Commerce NetBanking</option><option value="CPN-NA">PNB Corporate NetBanking</option><option value="PNB-NA">PNB NetBanking</option><option value="RSD-DIRECT">Rajasthan State Co-operative Bank-Debit Card</option><option value="RBS-NA">RBS (The Royal Bank of Scotland)</option><option value="SWB-NA">Saraswat Bank NetBanking</option><option value="SBJ-NA">SB Bikaner and Jaipur NetBanking</option><option value="SBH-NA">SB Hyderabad NetBanking</option><option value="SBM-NA">SB Mysore NetBanking</option><option value="SBT-NA">SB Travancore NetBanking</option><option value="SVC-NA">Shamrao Vitthal Co-operative Bank</option><option value="SIB-NA">South Indian Bank NetBanking</option><option value="SBP-NA">State Bank of Patiala NetBanking</option><option value="SYD-NA">Syndicate Bank NetBanking</option><option value="TNC-NA">Tamil Nadu State Co-operative Bank NetBanking</option><option value="UCO-NA">UCO Bank NetBanking</option><option value="UBI-NA">Union Bank NetBanking</option><option value="UNI-NA">United Bank of India NetBanking</option><option value="VJB-NA">Vijaya Bank NetBanking</option></select>
                                                </div>
                                                <input type="submit" value="PAY NOW">
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab4">
                                    <div class="pay_info">
                                        <div class="col-md-6 tab-grid">
                                            <img class="pp-img" src="images/paypal.png" alt="Image Alternative text" title="Image Title">
                                            <p>Important: You will be redirected to PayPal's website to securely complete your payment.</p><a class="btn btn-primary">Checkout via Paypal</a>
                                        </div>
                                        <div class="col-md-6">
                                            <form class="cc-form">
                                                <div class="clearfix">
                                                    <div class="form-group form-group-cc-number">
                                                        <label>Card Number</label>
                                                        <input class="form-control" placeholder="xxxx xxxx xxxx xxxx" type="text"><span class="cc-card-icon"></span>
                                                    </div>
                                                    <div class="form-group form-group-cc-cvc">
                                                        <label>CVV</label>
                                                        <input class="form-control" placeholder="xxxx" type="text">
                                                    </div>
                                                </div>
                                                <div class="clearfix">
                                                    <div class="form-group form-group-cc-name">
                                                        <label>Card Holder Name</label>
                                                        <input class="form-control" type="text">
                                                    </div>
                                                    <div class="form-group form-group-cc-date">
                                                        <label>Valid Thru</label>
                                                        <input class="form-control" placeholder="mm/yy" type="text">
                                                    </div>
                                                </div>
                                                <div class="checkbox checkbox-small">
                                                    <label>
                                                        <input class="i-check" type="checkbox" checked="">Add to My Cards</label>
                                                </div>
                                                <input class="btn btn-primary submit" type="submit" value="Proceed Payment">
                                            </form>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--//tabs-->
                </div>

            </div>
            <!-- //payment -->

            <div class="clearfix"></div>
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
    <!-- easy-responsive-tabs -->
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

    <!-- credit-card -->
    <script type="text/javascript" src="js/creditly.js"></script>
    <link rel="stylesheet" href="css/creditly.css" type="text/css" media="all" />

    <script type="text/javascript">
$(function () {
    var creditly = Creditly.initialize(
            '.creditly-wrapper .expiration-month-and-year',
            '.creditly-wrapper .credit-card-number',
            '.creditly-wrapper .security-code',
            '.creditly-wrapper .card-type');

    $(".creditly-card-form .submit").click(function (e) {
        e.preventDefault();
        var output = creditly.validate();
        if (output) {
            // Your validated credit card output
            console.log(output);
        }
    });
});
    </script>
    <!-- //credit-card -->


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
