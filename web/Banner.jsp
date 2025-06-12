<%-- 
    Document   : Banner
    Created on : Mar 3, 2024, 2:58:50 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="banner_top innerpage" id="home">
    <div class="wrapper_top_w3layouts">
        <div class="header_agileits">
            <div class="logo inner_page_log">
                <h1><a class="navbar-brand" href="index.html"><span>Downy</span> <i>Shoes</i></a></h1>
            </div>
            <div class="overlay overlay-contentpush">
                <button type="button" class="overlay-close"><i class="fa fa-times" aria-hidden="true"></i></button>

                <nav>
                    <ul>
                        <li><a href="index.html" class="active">Home</a></li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="404.html">Team</a></li>
                        <li><a href="show">Shop Now</a></li>
                        <li><a href="contact.html">Contact</a></li>
                            <c:if test="${sessionScope.acc == null}">
                            <li><a href="Login.jsp">Login</a></li>
                            </c:if>
                            <c:if test="${sessionScope.acc != null}">
                            <li><a href="login">Your Profile</a></li>
                            </c:if>                       
                            <c:if test="${sessionScope.acc.roll == 1}">
                            <li><a href="promanager">Manager Product</a></li>
                            </c:if>
                            <c:if test="${sessionScope.acc != null}">
                            <li><a href="logOut">Log Out</a></li>
                            </c:if>

                    </ul>
                </nav>
            </div>
            <div class="mobile-nav-button">
                <button id="trigger-overlay" type="button"><i class="fa fa-bars" aria-hidden="true"></i></button>
            </div>
            <!-- cart details -->
            <div class="top_nav_right">
                <div class="shoecart shoecart2 cart cart box_1">
                    <form action="cart" method="post" class="last">
                        <input type="hidden" name="cmd" value="_cart">
                        <input type="hidden" name="display" value="1">
                        <button style="position: fixed;
                                margin-left: 44px;" class="top_shoe_cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- //cart details -->
    <!-- search -->
    <div class="search_w3ls_agileinfo">
        <div class="cd-main-header">
            <ul class="cd-header-buttons">
                <!--                <li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>-->
            </ul>
        </div>
        <!--        <div id="cd-search" class="cd-search">
                    <form action="#" method="post">
                        <input name="Search" type="search" placeholder="Click enter after typing...">
                    </form>
                </div>-->
    </div>
    <!-- //search -->
    <div class="clearfix"></div>
    <!-- /banner_inner -->
    <div class="services-breadcrumb_w3ls_agileinfo">
        <div class="inner_breadcrumb_agileits_w3">

            <ul class="short">
                <li><a href="index.html">Home</a><i>|</i></li>
                <li><a href="show">Shop</a><i>|</i></li>

                <c:if test="${sessionScope.detailPro != null}">
                    <li><a>Detail</a></li>

                </c:if>
            </ul>
        </div>
    </div>
    <!-- //banner_inner -->
</div>

