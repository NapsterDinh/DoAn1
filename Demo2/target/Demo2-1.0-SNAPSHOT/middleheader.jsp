<%-- 
    Document   : secondheader
    Created on : Dec 16, 2020, 5:00:29 PM
    Author     : Napster
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.demo2.webmvc.ulti.MyUtils"%>
<%@page import="com.demo2.webmvc.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.google.protobuf.Int32Value"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="middle-header-area">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-3">
                        <div class="middle-header-logo">
                            <a href="${pageContext.request.contextPath}/home">
                                <img src="assets/img/logo.png" alt="image">
                            </a>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="middle-header-search">
                            <form>
                                <div class="row align-items-center">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <select style="display: none;">
                                                <option>All Category</option>
                                                <option value="1">Computers</option>
                                                <option value="2">Audio</option>
                                                <option value="2">Home Theater</option>
                                                <option value="3">Laptop</option>
                                                <option value="3">TV</option>
                                                <option value="3">Mobiles</option>
                                                <option value="3">Tablets</option>
                                                <option value="3">Headphone</option>
                                                <option value="3">Earphone</option>
                                                <option value="3">Battery</option>
                                                <option value="3">Watches</option>
                                                <option value="3">Cameras</option>
                                                <option value="3">Accessories</option>
                                            </select><div class="nice-select" tabindex="0"><span class="current">All Category</span><ul class="list"><li data-value="All Category" class="option selected">All Category</li><li data-value="1" class="option">Computers</li><li data-value="2" class="option">Audio</li><li data-value="2" class="option">Home Theater</li><li data-value="3" class="option">Laptop</li><li data-value="3" class="option">TV</li><li data-value="3" class="option">Mobiles</li><li data-value="3" class="option">Tablets</li><li data-value="3" class="option">Headphone</li><li data-value="3" class="option">Earphone</li><li data-value="3" class="option">Battery</li><li data-value="3" class="option">Watches</li><li data-value="3" class="option">Cameras</li><li data-value="3" class="option">Accessories</li></ul></div>	
                                        </div>
                                    </div>

                                    <div class="col-md-8">
                                        <div class="search-box">
                                            <input type="text" class="form-control" placeholder="Search product...">
                                            <button type="submit"><i class="bx bx-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <ul class="middle-header-optional">
                            <li><a href="${pageContext.request.contextPath}/wishlist?pr_id=0&wishlist_state=0"><i class="flaticon-heart"></i><span>
                                        ${count_wishlist}
                                    </span></a></li>
                            <li>
                                <a href="${pageContext.request.contextPath}/cart?pr_id=0&cart_state=0"><i class="flaticon-shopping-cart"></i><span>${count_cart}</span></a>
                            </li>
                            <li>$275.00</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="navbar-area">
            <div class="main-responsive-nav">
                <div class="container">
                    <div class="main-responsive-menu">
                        <div class="logo">
                            <a href="${pageContext.request.contextPath}/home">
                                <img src="assets/img/logo-2.png" alt="logo">
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="main-navbar">
                <div class="container">
                    <nav class="navbar navbar-expand-md navbar-light">
                        <div class="navbar-category">
                            <div class="collapse navbar-collapse">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a href="#" class="nav-link">
                                            <i class="bx bx-menu"></i>
                                            All Categories
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li class="nav-item">
                                                <a href="${pageContext.request.contextPath}/shop?id_category=1" class="nav-link">
                                                    <i class="flaticon-desktop-computer"></i>
                                                    Computers
                                                </a>
                                            </li>
    
                                            <li class="nav-item">
                                                <a href="${pageContext.request.contextPath}/shop?id_category=2" class="nav-link">
                                                    <i class="flaticon-stereo"></i>
                                                    Audio
                                                </a>
                                            </li>
                                            
                                            <li class="nav-item">
                                                <a href="${pageContext.request.contextPath}/shop?id_category=3" class="nav-link">
                                                    <i class="flaticon-laptop"></i>
                                                    Laptop
                                                </a>
                                            </li>
    
                                            <li class="nav-item">
                                                <a href="${pageContext.request.contextPath}/shop?id_category=4" class="nav-link">
                                                    <i class="flaticon-tv-box"></i>
                                                    TV
                                                </a>
                                            </li>

                                            <li class="nav-item">
                                                <a href="${pageContext.request.contextPath}/shop?id_category=5" class="nav-link">
                                                    <i class="flaticon-smartphone"></i>
                                                    Mobiles
                                                </a>
                                            </li>

                                            <li class="nav-item">
                                                <a href="${pageContext.request.contextPath}/shop?id_category=6" class="nav-link">
                                                    <i class="flaticon-headphones"></i>
                                                    Headphone
                                                </a>
                                            </li>

                                            <li class="nav-item">
                                                <a href="${pageContext.request.contextPath}/shop?id_category=7" class="nav-link">
                                                    <i class="flaticon-battery-charge"></i>
                                                    Battery
                                                </a>
                                            </li>

                                            <li class="nav-item">
                                                <a href="${pageContext.request.contextPath}/shop?id_category=8" class="nav-link">
                                                    <i class="flaticon-smart-watch"></i>
                                                    Watches
                                                </a>
                                            </li>

                                            <li class="nav-item">
                                                <a href="${pageContext.request.contextPath}/shop?id_category=9" class="nav-link">
                                                    <i class="flaticon-camera"></i>
                                                    Cameras
                                                </a>
                                            </li>

                                            <li class="nav-item">
                                                <a href="${pageContext.request.contextPath}/shop?id_category=10" class="nav-link">
                                                    <i class="flaticon-trimmer"></i>
                                                    Accessories
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="collapse navbar-collapse mean-menu" style="display: block;">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a href="#" class="nav-link active">
                                        Home 
                                        <i class="bx bx-chevron-down"></i>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item">
                                            <a href="${pageContext.request.contextPath}/home" class="nav-link active">Home One</a>
                                        </li>

                                        
                                    </ul>
                                </li>

                                <li class="nav-item megamenu">
                                    <a href="#" class="nav-link">
                                        Pages 
                                        <i class="bx bx-chevron-down"></i>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item">
                                            <div class="container">
                                                <div class="row">
                                                    <div class="col">
                                                        <ul class="megamenu-submenu">
                                                            <li>
                                                                <a href="about.html">About Us</a>
                                                            </li>

                                                            <li>
                                                                <a href="our-team.html">Our Team</a>
                                                            </li>

                                                            <li>
                                                                <a href="pricing-plans.html">Pricing Plans</a>
                                                            </li>

                                                            <li>
                                                                <a href="search.html">Search</a>
                                                            </li>

                                                            <li>
                                                                <a href="contact.html">Contact Us</a>
                                                            </li>
                                                        </ul>
                                                    </div>

                                                    <div class="col">
                                                        <ul class="megamenu-submenu">
                                                            <li>
                                                                <a href="faqs.html">FAQ's</a>
                                                            </li>

                                                            <li>
                                                                <a href="login.html">Login</a>
                                                            </li>

                                                            <li>
                                                                <a href="register.html">Register</a>
                                                            </li>

                                                            <li>
                                                                <a href="${pageContext.request.contextPath}/accountSetting">My Account</a>
                                                            </li>

                                                            <li>
                                                                <a href="error-404.html">404 Error</a>
                                                            </li>
                                                        </ul>
                                                    </div>

                                                    <div class="col">
                                                        <ul class="megamenu-submenu">
                                                            <li>
                                                                <a href="track-order.html">Tracking Order</a>
                                                            </li>

                                                            <li>
                                                                <a href="compare.html">Compare</a>
                                                            </li>

                                                            <li>
                                                                <a href="terms-of-service.html">Terms Of Service</a>
                                                            </li>

                                                            <li>
                                                                <a href="privacy-policy.html">Privacy Policy</a>
                                                            </li>

                                                            <li>
                                                                <a href="coming-soon.html">Coming Soon</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>

                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        Shop 
                                        <i class="bx bx-chevron-down"></i>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item">
                                            <a href="${pageContext.request.contextPath}/shop?id_category=0" class="nav-link">Shop</a>
                                        </li>

                                        <li class="nav-item">
                                            <a href="shop-list-view.html" class="nav-link">Shop List View</a>
                                        </li>

                                        <li class="nav-item">
                                            <a href="shop-left-sidebar.html" class="nav-link">Shop Left Sidebar</a>
                                        </li>

                                        <li class="nav-item">
                                            <a href="shop-right-sidebar.html" class="nav-link">Shop Right Sidebar</a>
                                        </li>

                                        <li class="nav-item">
                                            <a href="shop-full-width.html" class="nav-link">Shop Full Width</a>
                                        </li>

                                        <li class="nav-item">
                                            <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0" class="nav-link">Cart</a>
                                        </li>

                                        <li class="nav-item">
                                            <a href="wishlist.html" class="nav-link">Wishlist</a>
                                        </li>

                                        <li class="nav-item">
                                            <a href="checkout.html" class="nav-link">Checkout</a>
                                        </li>

                                        <li class="nav-item">
                                            <a href="#" class="nav-link">
                                                Products Details 
                                                <i class="bx bx-chevron-down"></i>
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li class="nav-item">
                                                    <a href="products-details.html" class="nav-link">Products Details</a>
                                                </li>
        
                                                <li class="nav-item">
                                                    <a href="products-details-sidebar.html" class="nav-link">Products Details Sidebar</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>

                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        Blog 
                                        <i class="bx bx-chevron-down"></i>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item">
                                            <a href="blog.html" class="nav-link">Blog</a>
                                        </li>

                                        <li class="nav-item">
                                            <a href="blog-list-view.html" class="nav-link">Blog List View</a>
                                        </li>

                                        <li class="nav-item">
                                            <a href="blog-left-sidebar.html" class="nav-link">Blog Left Sidebar</a>
                                        </li>

                                        <li class="nav-item">
                                            <a href="blog-right-sidebar.html" class="nav-link">Blog Right Sidebar</a>
                                        </li>

                                        <li class="nav-item">
                                            <a href="blog-full-width.html" class="nav-link">Blog Full Width</a>
                                        </li>

                                        <li class="nav-item">
                                            <a href="blog-details.html" class="nav-link">Blog Details</a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="nav-item">
                                    <a href="contact.html" class="nav-link">Contact</a>
                                </li>
                            </ul>

                            <div class="others-option d-flex align-items-center">
                                <div class="option-item">
                                    <span>
                                        Hotline:
                                        <a href="tel:8432 764 4657">(+84) 32 7644657 </a>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>

            <div class="others-option-for-responsive">
                <div class="container">
                    <div class="dot-menu">
                        <div class="inner">
                            <div class="circle circle-one"></div>
                            <div class="circle circle-two"></div>
                            <div class="circle circle-three"></div>
                        </div>
                    </div>
                    
                    <div class="container">
                        <div class="option-inner">
                            <div class="others-option d-flex align-items-center">
                                <div class="option-item">
                                    <span>
                                        Hotline:
                                        <a href="tel:16545676789">(+1) 654 567 – 6789</a>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
