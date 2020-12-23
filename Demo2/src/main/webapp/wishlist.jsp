<%-- 
    Document   : wishlist
    Created on : Dec 16, 2020, 5:58:24 PM
    Author     : Napster
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zxx">
    
<!-- Mirrored from templates.envytheme.com/ejon/default/wishlist.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Nov 2020 04:38:46 GMT -->
<head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS --> 
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <!-- Animate CSS --> 
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <!-- Meanmenu CSS -->
        <link rel="stylesheet" href="assets/css/meanmenu.css">
        <!-- Boxicons CSS -->
        <link rel="stylesheet" href="assets/css/boxicons.min.css">
        <!-- Flaticon CSS -->
        <link rel="stylesheet" href="assets/css/flaticon.css">
        <!-- Owl Carousel CSS -->
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <!-- Owl Carousel Default CSS -->
        <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
        <!-- Magnific Popup CSS -->
        <link rel="stylesheet" href="assets/css/magnific-popup.min.css">
        <!-- Nice Select CSS -->
        <link rel="stylesheet" href="assets/css/nice-select.min.css">
        <!-- Slick CSS -->
        <link rel="stylesheet" href="assets/css/slick.min.css">
        <!-- Odometer CSS -->
        <link rel="stylesheet" href="assets/css/odometer.min.css">
        <!-- Style CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <!-- Responsive CSS -->
		<link rel="stylesheet" href="assets/css/responsive.css">
		
		<title>Ejon - Electronics eCommerce HTML Template</title>

        <link rel="icon" type="image/png" href="assets/img/favicon.png">
    </head>

    <body>
        
        <!-- Start Preloader Area -->
        <div class="preloader">
            <div class="loader">
                <div class="sbl-half-circle-spin">
                    <div></div>
                </div>
            </div>
        </div>
        <!-- End Preloader Area -->

        <%@include file="topheader.jsp" %>
        
        <%@include file="middleheader.jsp" %>
        <!-- Start Navbar Area -->
        <div class="navbar-area">
            <div class="main-responsive-nav">
                <div class="container">
                    <div class="main-responsive-menu">
                        <div class="logo">
                            <a href="index.html">
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
                                            <i class='bx bx-menu'></i>
                                            All Categories
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li class="nav-item">
                                                <a href="#" class="nav-link">
                                                    <i class="flaticon-desktop-computer"></i>
                                                    Computers
                                                </a>
                                            </li>
    
                                            <li class="nav-item">
                                                <a href="#" class="nav-link">
                                                    <i class="flaticon-stereo"></i>
                                                    Audio
                                                </a>
                                            </li>
                                            
                                            <li class="nav-item">
                                                <a href="#" class="nav-link">
                                                    <i class="flaticon-laptop"></i>
                                                    Laptop
                                                </a>
                                            </li>
    
                                            <li class="nav-item">
                                                <a href="#" class="nav-link">
                                                    <i class="flaticon-tv-box"></i>
                                                    TV
                                                </a>
                                            </li>

                                            <li class="nav-item">
                                                <a href="#" class="nav-link">
                                                    <i class="flaticon-smartphone"></i>
                                                    Mobiles
                                                </a>
                                            </li>

                                            <li class="nav-item">
                                                <a href="#" class="nav-link">
                                                    <i class="flaticon-headphones"></i>
                                                    Headphone
                                                </a>
                                            </li>

                                            <li class="nav-item">
                                                <a href="#" class="nav-link">
                                                    <i class="flaticon-battery-charge"></i>
                                                    Battery
                                                </a>
                                            </li>

                                            <li class="nav-item">
                                                <a href="#" class="nav-link">
                                                    <i class="flaticon-smart-watch"></i>
                                                    Watches
                                                </a>
                                            </li>

                                            <li class="nav-item">
                                                <a href="#" class="nav-link">
                                                    <i class="flaticon-camera"></i>
                                                    Cameras
                                                </a>
                                            </li>

                                            <li class="nav-item">
                                                <a href="#" class="nav-link">
                                                    <i class="flaticon-trimmer"></i>
                                                    Accessories
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="collapse navbar-collapse mean-menu">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        Home 
                                        <i class='bx bx-chevron-down'></i>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item">
                                            <a href="index.html" class="nav-link">Home One</a>
                                        </li>

                                        <li class="nav-item">
                                            <a href="index-2.html" class="nav-link">Home Two</a>
                                        </li>
                                        
                                        <li class="nav-item">
                                            <a href="index-3.html" class="nav-link">Home Three</a>
                                        </li>

                                        <li class="nav-item">
                                            <a href="index-4.html" class="nav-link">Home Four</a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="nav-item megamenu">
                                    <a href="#" class="nav-link">
                                        Pages 
                                        <i class='bx bx-chevron-down'></i>
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
                                                                <a href="my-account.html">My Account</a>
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
                                    <a href="#" class="nav-link active">
                                        Shop 
                                        <i class='bx bx-chevron-down'></i>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item">
                                            <a href="shop.html" class="nav-link">Shop</a>
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
                                            <a href="cart.html" class="nav-link">Cart</a>
                                        </li>

                                        <li class="nav-item">
                                            <a href="wishlist.html" class="nav-link active">Wishlist</a>
                                        </li>

                                        <li class="nav-item">
                                            <a href="checkout.html" class="nav-link">Checkout</a>
                                        </li>

                                        <li class="nav-item">
                                            <a href="#" class="nav-link">
                                                Products Details 
                                                <i class='bx bx-chevron-down'></i>
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
                                        <i class='bx bx-chevron-down'></i>
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
                                        <a href="tel:16545676789">(+1) 654 567 – 6789</a>
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
        <!-- End Navbar Area -->

        <!-- Start Page Banner -->
        <div class="page-title-area">
            <div class="container">
                <div class="page-title-content">
                    <h2>Wishlist</h2>

                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li>Wishlist</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- End Page Banner -->

        <!-- Start Wishlist Area -->
		<section class="wishlist-area ptb-50">
            <div class="container">
                <div class="wishlist-table table-responsive">
                    <div class="wishlist-title">
                        <h2>Wishlist</h2>
                    </div>

                    <table class="table table-bordered">
                        <tbody>
                            <c:forEach var="Product" items="${wishlist}">
                                <tr>
                                <td class="product-remove">
                                    <a  class="remove" href="${pageContext.request.contextPath}/wishlist?pr_id=<c:out value="${Product.getId_Product()}"/>&wishlist_state=delete">
                                        <i class='bx bx-x'></i>
                                    </a>
                                </td>

                                <td class="product-thumbnail">
                                    <a href="${pageContext.request.contextPath}/product-detail?pr_id=<c:out value="${Product.getId_Product()}"/>">
                                        <img style="" src="products/<c:out value="${Product.getImage()}"/>" alt="item">
                                    </a>
                                </td>

                                <td class="product-name">
                                    <a href="${pageContext.request.contextPath}/product-detail?pr_id=<c:out value="${Product.getId_Product()}"/>"><c:out value="${Product.getName_product()}"/></a>
                                </td>

                                <td class="product-price">
                                    <span class="unit-amount">$<c:out value="${Product.getPrice()}"/></span>
                                </td>
                                <c:if test = "${Int.Product.getState() ne '1'}">
                                        <td class="product-stock">
                                            <span class="stock"><c:out value="In Stock"/></span>
                                        </td>
                                </c:if>
                                <c:if test = "${Int.chosen_product.getState() eq '1'}">
                                       <td class="product-stock">
                                            <span class="stock"><c:out value="SOLD OUT"/></span>
                                       </td> 
                                </c:if>
                                
                                <td class="product-btn">
                                    <a href="#" class="default-btn">
                                                                        <i class="flaticon-shopping-cart"></i>
                                                                        Add to Cart
                                                                        <span></span>
                                                                    </a>
                                                                </td>                                                                   
                            </tr>

                            </c:forEach>
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <!-- End Wishlist Area -->

        <!-- Start Footer Area -->
        <section class="footer-area pt-50 pb-20">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-sm-6">
                        <div class="single-footer-widget">
                            <h2>Get in Touch</h2>
    
                            <ul class="footer-contact-info">
                                <li>
                                    <span>Address:</span> 
                                    <a href="#" target="_blank">4848 Hershell Hollow Road Bothell, WA 89076</a>
                                </li>
                                <li>
                                    <span>Phone:</span> 
                                    <a href="tel:+15143214567">+1 (514) 321-4567</a>
                                </li>
                                <li>
                                    <span>Email:</span> 
                                    <a href="mailto:hello@ejon.com">hello@ejon.com</a>
                                </li>
                            </ul>
                            <ul class="footer-social">
                                <li>
                                    <a href="#" target="_blank">
                                        <i class='bx bxl-facebook'></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">
                                        <i class='bx bxl-instagram'></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">
                                        <i class='bx bxl-pinterest-alt'></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">
                                        <i class='bx bxl-twitter'></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-3 col-sm-6">
                        <div class="single-footer-widget">
                            <h2>Policies</h2>
    
                            <ul class="quick-links">
                                <li>
                                    <a href="#">Shipping And Delivery</a>
                                </li>
                                <li>
                                    <a href="#">Payment Method</a>
                                </li>
                                <li>
                                    <a href="#">How to Shop</a>
                                </li>
                                <li>
                                    <a href="#">Terms And Conditions</a>
                                </li>
                                <li>
                                    <a href="#">Privacy Policy</a>
                                </li>
                                <li>
                                    <a href="#">Returns</a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-3 col-sm-6">
                        <div class="single-footer-widget">
                            <h2>Support</h2>
    
                            <ul class="quick-links">
                                <li>
                                    <a href="#">My Account</a>
                                </li>
                                <li>
                                    <a href="#">Order Tracking</a>
                                </li>
                                <li>
                                    <a href="#">Contact Us</a>
                                </li>
                                <li>
                                    <a href="#">Customer Services</a>
                                </li>
                                <li>
                                    <a href="#">FAQs</a>
                                </li>
                                <li>
                                    <a href="#">Help Desk</a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-3 col-sm-6">
                        <div class="single-footer-widget">
                            <h2>Join Our Newsletter</h2>
    
                            <div class="newsletter-item">
                                <div class="newsletter-content">
                                    <p>Subscribe to the newsletter for all the latest updates</p>
                                </div>   

                                <form class="newsletter-form" data-toggle="validator">
                                    <input type="email" class="input-newsletter" placeholder="Email address" name="EMAIL" required autocomplete="off">
            
                                    <button type="submit">Subscribe</button>
                                    <div id="validator-newsletter" class="form-result"></div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Footer Area -->

        <!-- Start Copy Right Area -->
        <div class="copyright-area">
            <div class="container">
                <div class="copyright-area-content">
                    <p>
                        Copyright @2020 Ejon. All Rights Reserved by
                        <a href="https://envytheme.com/" target="_blank">EnvyTheme</a>
                    </p>
                </div>
            </div>
        </div>
        <!-- End Copy Right Area -->

        <!-- Start Go Top Area -->
        <div class="go-top">
            <i class='bx bx-up-arrow-alt'></i>
        </div>
        <!-- End Go Top Area -->

        <!-- Jquery Slim JS -->
        <script src="assets/js/jquery.min.js"></script>
        <!-- Popper JS -->
        <script src="assets/js/popper.min.js"></script>
        <!-- Bootstrap JS -->
        <script src="assets/js/bootstrap.min.js"></script>
        <!-- Meanmenu JS -->
        <script src="assets/js/jquery.meanmenu.js"></script>
        <!-- Owl Carousel JS -->
        <script src="assets/js/owl.carousel.min.js"></script>
        <!-- Magnific Popup JS -->
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <!-- Nice Select JS -->
        <script src="assets/js/jquery.nice-select.min.js"></script>
        <!-- Slick JS -->
        <script src="assets/js/slick.min.js"></script>
        <!-- Odometer JS -->
        <script src="assets/js/odometer.min.js"></script>
        <!-- Appear JS -->
        <script src="assets/js/jquery.appear.js"></script>
        <!-- Jquery Ui JS -->
        <script src="assets/js/jquery-ui.min.js"></script>
        <!-- Ajaxchimp JS -->
		<script src="assets/js/jquery.ajaxchimp.min.js"></script>
		<!-- Form Validator JS -->
		<script src="assets/js/form-validator.min.js"></script>
		<!-- Contact JS -->
        <script src="assets/js/contact-form-script.js"></script>
        <!-- Wow JS -->
        <script src="assets/js/wow.min.js"></script>
        <!-- Custom JS -->
        <script src="assets/js/main.js"></script>
    </body>

<!-- Mirrored from templates.envytheme.com/ejon/default/wishlist.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Nov 2020 04:38:47 GMT -->
</html>
