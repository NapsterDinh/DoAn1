<%-- 
    Document   : index
    Created on : Nov 29, 2020, 10:14:27 PM
    Author     : Napster
--%>

<%@page import="com.demo2.webmvc.model.UserAccount"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zxx">
    
<!-- Mirrored from templates.envytheme.com/ejon/default/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Nov 2020 04:38:16 GMT -->
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

        <!-- Start Newsletter Modal -->
		<div class="modal-newsletter-area">
			<div class="modal fade" id="newsletter-modal" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<button type="button" class="close" data-dismiss="modal">
							<i class="bx bx-x"></i>
						</button>
					
						<div class="modal-body">
							<div class="row">
								<div class="col-lg-5 col-sm-5 p-0">
									<div class="modal-newsletter-image"></div>
								</div>

								<div class="col-lg-7 col-sm-7 p-0">
									<div class="modal-newsletter-wrap">
										<div class="content">
                                            <h3>Subscribe to Our Newsletter</h3>
										    <p>Sign up for our mailing list to get the latest updates & offers.</p>
                                        </div>

										<form class="newsletter-form">
                                            <input type="email" class="input-newsletter" placeholder="Email address" name="EMAIL" required autocomplete="off">
                    
                                            <button type="submit">Subscribe</button>
                                        </form>

                                        <ul class="modal-social">
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

                                        <p class="comment-form-cookies-consent">
                                            <input type="checkbox" value="yes" name="wp-comment-cookies-consent" id="wp-comment-cookies-consent">
                                            <label for="wp-comment-cookies-consent">Don't show this popup again</label>
                                        </p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--  End Newsletter Modal -->
        <%@include file="topheader.jsp" %>
        
        <%@include file="middleheader.jsp" %>
        
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
                                            <a href="${pageContext.request.contextPath}/shop" class="nav-link">Shop</a>
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
        <!-- Start Main Slider Area -->
        <div class="home-slides owl-carousel owl-theme">
            <div class="main-slider-item">
                <div class="d-table">
                    <div class="d-table-cell">
                        <div class="container">
                            <div class="row align-items-center">
                                <div class="col-lg-6">
                                    <div class="main-slider-content">
                                        <b>Big Sale Offer</b>
                                        <h1>The Drone has an Attractive Gift Free</h1>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                        
                                        <div class="slider-btn">
                                            <a href="#" class="default-btn">
                                                <i class="flaticon-shopping-cart"></i>
                                                Shop Now
                                                <span></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="main-slider-image">
                                        <img src="assets/img/main-slider/drone.png" alt="image">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="main-slider-item">
                <div class="d-table">
                    <div class="d-table-cell">
                        <div class="container">
                            <div class="row align-items-center">
                                <div class="col-lg-6">
                                    <div class="main-slider-content">
                                        <b>Big Sale Offer</b>
                                        <h1>The High-Quality Product is Ready</h1>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                        
                                        <div class="slider-btn">
                                            <a href="#" class="default-btn">
                                                <i class="flaticon-shopping-cart"></i>
                                                Shop Now
                                                <span></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="main-slider-image">
                                        <img src="assets/img/main-slider/headphone.png" alt="image">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="main-slider-item">
                <div class="d-table">
                    <div class="d-table-cell">
                        <div class="container">
                            <div class="row align-items-center">
                                <div class="col-lg-6">
                                    <div class="main-slider-content">
                                        <b>Big Sale Offer</b>
                                        <h1>Get The Best Deal on Smart TV</h1>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                        
                                        <div class="slider-btn">
                                            <a href="#" class="default-btn">
                                                <i class="flaticon-shopping-cart"></i>
                                                Shop Now
                                                <span></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="main-slider-image">
                                        <img src="assets/img/main-slider/monitor.png" alt="image">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Main Slider Area -->

        <!-- Start Overview Area -->
        <section class="overview-area pt-100 pb-20">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="single-overview">
                            <div class="row align-items-center">
                                <div class="col-lg-6">
                                    <div class="overview-image">
                                        <img src="assets/img/overview/overview-1.png" alt="image">
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="overview-content">
                                        <h3>Special Discount Offer</h3>
                                        <p>for 12-12 Festival</p>
                                        <span>$499.00</span>

                                        <div class="overview-btn">
                                            <a href="#" class="default-btn">
                                                <i class="flaticon-shopping-cart"></i>
                                                Shop Now
                                                <span></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-6">
                        <div class="single-overview-item">
                            <div class="row align-items-center">
                                <div class="col-lg-8">
                                    <div class="overview-content">
                                        <p>Featured</p>
                                        <h3>Best Price & Great Quality</h3>
                                        <span>50% Off</span>

                                        <div class="overview-btn">
                                            <a href="#" class="overview-btn-one">View Product</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4">
                                    <div class="overview-image">
                                        <img src="assets/img/overview/overview-2.png" alt="image">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Overview Area -->

        <!-- Start Support Area -->
        <section class="support-area">
            <div class="container">
                <div class="support-inner-box">
                    <div class="row">
                        <div class="col-lg-3 col-md-6">
                            <div class="single-support">
                                <div class="icon">
                                    <i class="flaticon-free-shipping"></i>
                                </div>

                                <div class="support-content">
                                    <h3>Free Shipping Worldwide</h3>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6">
                            <div class="single-support">
                                <div class="icon">
                                    <i class="flaticon-return"></i>
                                </div>

                                <div class="support-content">
                                    <h3>30 Days Money Returns</h3>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6">
                            <div class="single-support">
                                <div class="icon">
                                    <i class="flaticon-security"></i>
                                </div>

                                <div class="support-content">
                                    <h3>100% Secure Payment</h3>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6">
                            <div class="single-support">
                                <div class="icon">
                                    <i class="flaticon-support"></i>
                                </div>

                                <div class="support-content">
                                    <h3>24/7 Customer Support</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Support Area -->

        <!-- Start Arrivals Products Area -->
        <section class="arrivals-products-area pt-100 pb-70">
            <div class="container">
                <div class="section-title">
                    <h2>New Arrivals</h2>
                </div>

                <div class="row">
                    <div class="col-lg-3 col-sm-6">
                        <div class="single-arrivals-products">
                            <div class="arrivals-products-image">
                                <a href="products-details.html"><img src="assets/img/arrivals-products/arrivals-products-1.jpg" alt="image"></a>
                                <div class="tag">New</div>
                                <ul class="arrivals-action">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                            <i class="flaticon-shopping-cart"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                    </li>
                                    <li>
                                        <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                    </li>
                                </ul>
                            </div>

                            <div class="arrivals-products-content">
                                <h3>
                                    <a href="products-details.html">Smart Watch</a>
                                </h3>
                                <ul class="rating">
                                    <li><i class='bx bxs-star'></i></li>
                                    <li><i class='bx bxs-star'></i></li>
                                    <li><i class='bx bxs-star'></i></li>
                                    <li><i class='bx bxs-star'></i></li>
                                    <li><i class='bx bxs-star'></i></li>
                                </ul>
                                <span>$99.00</span>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-sm-6">
                        <div class="single-arrivals-products">
                            <div class="arrivals-products-image">
                                <a href="products-details.html"><img src="assets/img/arrivals-products/arrivals-products-2.jpg" alt="image"></a>
                                <div class="tag">New</div>
                                <ul class="arrivals-action">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                            <i class="flaticon-shopping-cart"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                    </li>
                                    <li>
                                        <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                    </li>
                                </ul>
                            </div>

                            <div class="arrivals-products-content">
                                <h3>
                                    <a href="products-details.html">Digital Camera</a>
                                </h3>
                                <ul class="rating">
                                    <li><i class='bx bxs-star'></i></li>
                                    <li><i class='bx bxs-star'></i></li>
                                    <li><i class='bx bxs-star'></i></li>
                                    <li><i class='bx bxs-star'></i></li>
                                    <li><i class='bx bxs-star'></i></li>
                                </ul>
                                <span>$125.00</span>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-sm-6">
                        <div class="single-arrivals-products">
                            <div class="arrivals-products-image">
                                <a href="products-details.html"><img src="assets/img/arrivals-products/arrivals-products-3.jpg" alt="image"></a>
                                <div class="tag">Sale</div>
                                <ul class="arrivals-action">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                            <i class="flaticon-shopping-cart"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                    </li>
                                    <li>
                                        <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                    </li>
                                </ul>
                            </div>

                            <div class="arrivals-products-content">
                                <h3>
                                    <a href="products-details.html">Wireless Headphone</a>
                                </h3>
                                <ul class="rating">
                                    <li><i class='bx bxs-star'></i></li>
                                    <li><i class='bx bxs-star'></i></li>
                                    <li><i class='bx bxs-star'></i></li>
                                    <li><i class='bx bxs-star'></i></li>
                                    <li><i class='bx bxs-star'></i></li>
                                </ul>
                                <span>$175.00</span>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-sm-6">
                        <div class="single-arrivals-products">
                            <div class="arrivals-products-image">
                                <a href="products-details.html"><img src="assets/img/arrivals-products/arrivals-products-4.jpg" alt="image"></a>
                                <div class="tag">New</div>
                                <ul class="arrivals-action">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                            <i class="flaticon-shopping-cart"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                    </li>
                                    <li>
                                        <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                    </li>
                                </ul>
                            </div>

                            <div class="arrivals-products-content">
                                <h3>
                                    <a href="products-details.html">Bluetooth Speaker</a>
                                </h3>
                                <ul class="rating">
                                    <li><i class='bx bxs-star'></i></li>
                                    <li><i class='bx bxs-star'></i></li>
                                    <li><i class='bx bxs-star'></i></li>
                                    <li><i class='bx bxs-star'></i></li>
                                    <li><i class='bx bxs-star'></i></li>
                                </ul>
                                <span>$75.00</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Arrivals Products Area -->

        <!-- Start Offer Products Area -->
        <section class="offer-products-area pb-70">
            <div class="container">
                <div class="section-title">
                    <h2>Special Offer</h2>
                </div>

                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="single-offer-products">
                            <div class="offer-products-image">
                                <a href="products-details.html"><img src="assets/img/offer-products/offer-products-1.png" alt="image"></a>
                                <div class="tag">-20%</div>
                            </div>
        
                            <div class="offer-products-content">
                                <span>Gadget</span>
                                <h3>
                                    <a href="products-details.html">Smartphone</a>
                                </h3>
                                <div class="price">
                                    <span class="new-price">$400.00</span>
                                    <span class="old-price">$500.00</span>
                                </div>
                                <ul class="rating">
                                    <li>
                                        <i class='bx bxs-star'></i>
                                        <i class='bx bxs-star'></i>
                                        <i class='bx bxs-star'></i>
                                        <i class='bx bxs-star'></i>
                                        <i class='bx bxs-star'></i>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="single-offer-products">
                            <div class="offer-products-image">
                                <a href="products-details.html"><img src="assets/img/offer-products/offer-products-2.png" alt="image"></a>
                                <div class="tag">-50%</div>
                            </div>
        
                            <div class="offer-products-content">
                                <span>Gadget</span>
                                <h3>
                                    <a href="products-details.html">Bluetooth Headphone</a>
                                </h3>
                                <div class="price">
                                    <span class="new-price">$150.00</span>
                                    <span class="old-price">$75.00</span>
                                </div>
                                <ul class="rating">
                                    <li>
                                        <i class='bx bxs-star'></i>
                                        <i class='bx bxs-star'></i>
                                        <i class='bx bxs-star'></i>
                                        <i class='bx bxs-star'></i>
                                        <i class='bx bxs-star'></i>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 offset-lg-0 offset-md-3">
                        <div class="single-offer-products">
                            <div class="offer-products-image">
                                <a href="products-details.html"><img src="assets/img/offer-products/offer-products-3.png" alt="image"></a>
                                <div class="tag">-30%</div>
                            </div>
        
                            <div class="offer-products-content">
                                <span>Gadget</span>
                                <h3>
                                    <a href="products-details.html">Smart TV</a>
                                </h3>
                                <div class="price">
                                    <span class="new-price">$999.00</span>
                                    <span class="old-price">$700.00</span>
                                </div>
                                <ul class="rating">
                                    <li>
                                        <i class='bx bxs-star'></i>
                                        <i class='bx bxs-star'></i>
                                        <i class='bx bxs-star'></i>
                                        <i class='bx bxs-star'></i>
                                        <i class='bx bxs-star'></i>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Offer Products Area -->

        <!-- Start Collection Area -->
        <section class="collection-area">
            <div class="container">
                <div class="collection-inner-box">
                    <div class="row align-items-center">
                        <div class="col-lg-4 col-md-6">
                            <div class="collection-image">
                                <img src="assets/img/collection/collection-1.png" alt="image">
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6">
                            <div class="collection-content">
                                <span>New Arrival</span>
                                <h3>Best Gadget</h3>
                                <p>Collection</p>
        
                                <div class="collection-btn">
                                    <a href="#" class="default-btn">
                                        <i class="flaticon-shopping-cart"></i>
                                        Shop Now
                                        <span></span>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 offset-lg-0 offset-md-3">
                            <div class="collection-image">
                                <img src="assets/img/collection/collection-2.png" alt="image">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Collection Area -->

        <!-- Start Bestsellers Area -->
        <section class="bestsellers-area pt-100 pb-70">
            <div class="container">
                <div class="section-title">
                    <h2>Bestsellers</h2>
                </div>

                <div class="tab bestsellers-list-tab">
                    <ul class="tabs">
                        <li>
                            <a href="#">Smartphones</a>
                        </li>
                        <li>
                            <a href="#">TV</a>
                        </li>
                        <li>
                            <a href="#">Cameras</a>
                        </li>
                        <li>
                            <a href="#">Audio</a>
                        </li>
                        <li>
                            <a href="#">Computers</a>
                        </li>
                        <li>
                            <a href="#">Accessories</a>
                        </li>
                        <li>
                            <a href="#">Laptop</a>
                        </li>
                        <li>
                            <a href="#">Watches</a>
                        </li>
                        <li>
                            <a href="#">Mobile</a>
                        </li>
                        <li>
                            <a href="#">Headphone</a>
                        </li>
                    </ul>

                    <div class="tab_content">
                        <div class="tabs_item">
                            <div class="row">
                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-1.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Action Camera</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$150.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-2.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Portable Speakers</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$125.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-3.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Gaming Controller</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$100.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-4.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Wireless Mouse</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$75.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-5.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Camera Lense</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$170.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-6.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Airpods Pro</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$165.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-7.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">CCtv Camera</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$120.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-8.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Wireless Keyboard</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$155.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tabs_item">
                            <div class="row">
                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-1.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Action Camera</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$150.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-2.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Portable Speakers</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$125.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-3.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Gaming Controller</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$100.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-4.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Wireless Mouse</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$75.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-5.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Camera Lense</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$170.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-6.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Airpods Pro</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$165.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-7.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">CCtv Camera</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$120.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-8.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Wireless Keyboard</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$155.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tabs_item">
                            <div class="row">
                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-1.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Action Camera</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$150.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-2.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Portable Speakers</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$125.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-3.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Gaming Controller</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$100.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-4.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Wireless Mouse</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$75.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-5.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Camera Lense</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$170.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-6.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Airpods Pro</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$165.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-7.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">CCtv Camera</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$120.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-8.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Wireless Keyboard</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$155.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tabs_item">
                            <div class="row">
                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-1.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Action Camera</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$150.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-2.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Portable Speakers</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$125.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-3.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Gaming Controller</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$100.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-4.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Wireless Mouse</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$75.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-5.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Camera Lense</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$170.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-6.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Airpods Pro</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$165.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-7.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">CCtv Camera</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$120.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-8.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Wireless Keyboard</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$155.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tabs_item">
                            <div class="row">
                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-1.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Action Camera</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$150.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-2.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Portable Speakers</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$125.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-3.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Gaming Controller</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$100.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-4.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Wireless Mouse</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$75.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-5.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Camera Lense</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$170.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-6.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Airpods Pro</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$165.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-7.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">CCtv Camera</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$120.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-8.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Wireless Keyboard</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$155.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tabs_item">
                            <div class="row">
                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-1.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Action Camera</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$150.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-2.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Portable Speakers</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$125.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-3.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Gaming Controller</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$100.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-4.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Wireless Mouse</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$75.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-5.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Camera Lense</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$170.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-6.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Airpods Pro</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$165.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-7.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">CCtv Camera</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$120.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-8.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Wireless Keyboard</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$155.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tabs_item">
                            <div class="row">
                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-1.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Action Camera</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$150.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-2.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Portable Speakers</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$125.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-3.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Gaming Controller</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$100.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-4.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Wireless Mouse</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$75.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-5.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Camera Lense</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$170.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-6.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Airpods Pro</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$165.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-7.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">CCtv Camera</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$120.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-8.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Wireless Keyboard</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$155.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tabs_item">
                            <div class="row">
                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-1.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Action Camera</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$150.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-2.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Portable Speakers</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$125.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-3.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Gaming Controller</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$100.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-4.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Wireless Mouse</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$75.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-5.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Camera Lense</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$170.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-6.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Airpods Pro</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$165.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-7.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">CCtv Camera</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$120.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-8.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Wireless Keyboard</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$155.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tabs_item">
                            <div class="row">
                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-1.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Action Camera</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$150.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-2.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Portable Speakers</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$125.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-3.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Gaming Controller</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$100.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-4.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Wireless Mouse</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$75.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-5.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Camera Lense</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$170.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-6.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Airpods Pro</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$165.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-7.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">CCtv Camera</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$120.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-8.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Wireless Keyboard</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$155.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tabs_item">
                            <div class="row">
                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-1.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Action Camera</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$150.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-2.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Portable Speakers</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$125.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-3.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Gaming Controller</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$100.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-4.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Wireless Mouse</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$75.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-5.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Camera Lense</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$170.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-6.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Airpods Pro</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$165.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-7.jpg" alt="image"></a>
                                            <div class="tag">New</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">CCtv Camera</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$120.00</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-sm-6">
                                    <div class="single-bestsellers-products">
                                        <div class="bestsellers-products-image">
                                            <a href="products-details.html"><img src="assets/img/bestsellers-products/bestsellers-products-8.jpg" alt="image"></a>
                                            <div class="tag">Sale</div>
                                            <ul class="bestsellers-action">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                        <i class="flaticon-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                                </li>
                                            </ul>
                                        </div>
            
                                        <div class="bestsellers-products-content">
                                            <h3>
                                                <a href="products-details.html">Wireless Keyboard</a>
                                            </h3>
                                            <ul class="rating">
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                                <li><i class='bx bxs-star'></i></li>
                                            </ul>
                                            <span>$155.00</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Bestsellers Area -->

        <!-- Start Special Products Area -->
        <section class="special-products-area pb-70">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-12">
                        <div class="special-products-inner">
                            <div class="inner-content">
                                <span>New Arrival</span>
                                <h3>Special Laptop</h3>
                                <p>Stock is Limited</p>
        
                                <div class="inner-btn">
                                    <a href="#" class="default-btn">
                                        <i class="flaticon-shopping-cart"></i>
                                        Shop Now
                                        <span></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-9 col-md-12">
                        <div class="section-title">
                            <h2>Special Products</h2>
                        </div>

                        <div class="row">
                            <div class="col-lg-4 col-sm-6">
                                <div class="single-special-products">
                                    <div class="special-products-image">
                                        <a href="products-details.html"><img src="assets/img/special-products/special-products-1.jpg" alt="image"></a>
                                        <div class="tag">New</div>
                                        <ul class="special-action">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                    <i class="flaticon-shopping-cart"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                            </li>
                                            <li>
                                                <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                            </li>
                                        </ul>
                                    </div>
        
                                    <div class="special-products-content">
                                        <h3>
                                            <a href="products-details.html">Digital Camera</a>
                                        </h3>
                                        <ul class="rating">
                                            <li><i class='bx bxs-star'></i></li>
                                            <li><i class='bx bxs-star'></i></li>
                                            <li><i class='bx bxs-star'></i></li>
                                            <li><i class='bx bxs-star'></i></li>
                                            <li><i class='bx bxs-star'></i></li>
                                        </ul>
                                        <span>$700.00</span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-sm-6">
                                <div class="single-special-products">
                                    <div class="special-products-image">
                                        <a href="products-details.html"><img src="assets/img/special-products/special-products-2.jpg" alt="image"></a>
                                        <div class="tag">New</div>
                                        <ul class="special-action">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                    <i class="flaticon-shopping-cart"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                            </li>
                                            <li>
                                                <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                            </li>
                                        </ul>
                                    </div>
        
                                    <div class="special-products-content">
                                        <h3>
                                            <a href="products-details.html">Smart TV</a>
                                        </h3>
                                        <ul class="rating">
                                            <li><i class='bx bxs-star'></i></li>
                                            <li><i class='bx bxs-star'></i></li>
                                            <li><i class='bx bxs-star'></i></li>
                                            <li><i class='bx bxs-star'></i></li>
                                            <li><i class='bx bxs-star'></i></li>
                                        </ul>
                                        <span>$500.00</span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col-sm-6 offset-lg-0 offset-md-3">
                                <div class="single-special-products">
                                    <div class="special-products-image">
                                        <a href="products-details.html"><img src="assets/img/special-products/special-products-3.jpg" alt="image"></a>
                                        <div class="tag">New</div>
                                        <ul class="special-action">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/cart?pr_id=0&wishlist_state=0">
                                                    <i class="flaticon-shopping-cart"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="wishlist.html"><i class="flaticon-heart"></i></a>
                                            </li>
                                            <li>
                                                <a href="#" data-toggle="modal" data-target="#productsQuickView"><i class="flaticon-view"></i></a>
                                            </li>
                                        </ul>
                                    </div>
        
                                    <div class="special-products-content">
                                        <h3>
                                            <a href="#">New Smart Phone</a>
                                        </h3>
                                        <ul class="rating">
                                            <li><i class='bx bxs-star'></i></li>
                                            <li><i class='bx bxs-star'></i></li>
                                            <li><i class='bx bxs-star'></i></li>
                                            <li><i class='bx bxs-star'></i></li>
                                            <li><i class='bx bxs-star'></i></li>
                                        </ul>
                                        <span>$1175.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Special Products Area -->

        <!-- Start Blog Area -->
        <section class="blog-area pb-70">
            <div class="container">
                <div class="section-title">
                    <h2>Latest News</h2>
                </div>

                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="single-blog">
                            <div class="blog-image">
                                <a href="#">
                                    <img src="assets/img/blog/blog-1.jpg" alt="image">
                                </a>
                            </div>

                            <div class="blog-content">
                                <span>eCommerce</span>
                                <h3>
                                    <a href="blog-details.html">The Factory is Making its Own Mobile Chipset</a>
                                </h3>
                                <div class="post-meta">
                                    <a href="#">Admin</a> / 20 October 2020
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="single-blog">
                            <div class="blog-image">
                                <a href="blog-details.html"><img src="assets/img/blog/blog-2.jpg" alt="image"></a>
                            </div>

                            <div class="blog-content">
                                <span>eCommerce</span>
                                <h3>
                                    <a href="blog-details.html">Minimal Design Inspiration Hand Watch</a>
                                </h3>
                                <div class="post-meta">
                                    <a href="#">Admin</a> / 19 October 2020
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 offset-lg-0 offset-md-3">
                        <div class="single-blog">
                            <div class="blog-image">
                                <a href="blog-details.html"><img src="assets/img/blog/blog-3.jpg" alt="image"></a>
                            </div>

                            <div class="blog-content">
                                <span>eCommerce</span>
                                <h3>
                                    <a href="blog-details.html">You Can See the Electronic Products in the Showroom</a>
                                </h3>
                                <div class="post-meta">
                                    <a href="#">Admin</a> / 18 October 2020
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Blog Area -->

        <!-- Start Partner Area -->
        <div class="partner-area ptb-100">
            <div class="container">
                <div class="partner-slider owl-carousel owl-theme">
                    <div class="partner-item">
                        <a href="#">
                            <img src="assets/img/partner/partner-1.png" alt="image">
                        </a>
                    </div>

                    <div class="partner-item">
                        <a href="#">
                            <img src="assets/img/partner/partner-2.png" alt="image">
                        </a>
                    </div>

                    <div class="partner-item">
                        <a href="#">
                            <img src="assets/img/partner/partner-3.png" alt="image">
                        </a>
                    </div>

                    <div class="partner-item">
                        <a href="#">
                            <img src="assets/img/partner/partner-4.png" alt="image">
                        </a>
                    </div>

                    <div class="partner-item">
                        <a href="#">
                            <img src="assets/img/partner/partner-5.png" alt="image">
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Partner Area -->

        <!-- Start Footer Area -->
        <section class="footer-area pt-100 pb-70">
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

        <!-- Start QuickView Modal Area -->
        <div class="modal fade productsQuickView" id="productsQuickView" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class='bx bx-x'></i></span>
                    </button>

                    <div class="row align-items-center">
                        <div class="col-lg-6 col-md-6">
                            <div class="products-details-image">
                                <ul class="products-details-image-slides">
                                    <li><img src="assets/img/quick-view/quick-view-1.jpg" alt="image"></li>
                                    <li><img src="assets/img/quick-view/quick-view-2.jpg" alt="image"></li>
                                    <li><img src="assets/img/quick-view/quick-view-3.jpg" alt="image"></li>
                                </ul>
    
                                <div class="slick-thumbs">
                                    <ul>
                                        <li><img src="assets/img/quick-view/quick-view-1.jpg" alt="image"></li>
                                        <li><img src="assets/img/quick-view/quick-view-2.jpg" alt="image"></li>
                                        <li><img src="assets/img/quick-view/quick-view-3.jpg" alt="image"></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6 col-md-6">
                            <div class="product-content">
                                <h3>Bluetooth Headphones</h3>

                                <div class="product-review">
                                    <div class="rating">
                                        <i class='bx bxs-star'></i>
                                        <i class='bx bxs-star'></i>
                                        <i class='bx bxs-star'></i>
                                        <i class='bx bxs-star'></i>
                                        <i class='bx bxs-star'></i>
                                    </div>
                                </div>

                                <div class="price">
                                    <span class="old-price">$150.00</span>
                                    <span class="new-price">$75.00</span>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea com modo consequat.</p>

                                <ul class="products-info">
                                    <li><span>Availability:</span> <a href="#">In stock</a></li>
                                    <li><span>SKU:</span> <a href="#">L458-25</a></li>
                                </ul>

                                <div class="products-color-switch">
                                    <p class="available-color"><span>Color</span> : 
                                        <a href="#" style="background: #a53c43;"></a>
                                        <a href="#" style="background: #192861;"></a>
                                        <a href="#" style="background: #c58a84;"></a>
                                        <a href="#" style="background: #ecc305;"></a>
                                        <a href="#" style="background: #000000;"></a>
                                        <a href="#" style="background: #808080;"></a>
                                    </p>
                                </div>

                                <div class="product-quantities">
                                    <span>Quantities:</span>

                                    <div class="input-counter">
                                        <span class="minus-btn">
                                            <i class='bx bx-minus'></i>
                                        </span>
                                        <input type="text" value="1">
                                        <span class="plus-btn">
                                            <i class='bx bx-plus'></i>
                                        </span>
                                    </div>
                                </div>

                                <div class="product-add-to-cart">
                                    <button type="submit" class="default-btn">
                                        <i class="flaticon-shopping-cart"></i>
                                        Add to cart
                                        <span></span>
                                    </button>
                                </div>
    
                                <div class="products-share">
                                    <ul class="social">
                                        <li><span>Share:</span></li>
                                        <li>
                                            <a href="#" target="_blank"><i class='bx bxl-facebook'></i></a>
                                        </li>
                                        <li>
                                            <a href="#" target="_blank"><i class='bx bxl-twitter'></i></a>
                                        </li>
                                        <li>
                                            <a href="#" target="_blank"><i class='bx bxl-linkedin'></i></a>
                                        </li>
                                        <li>
                                            <a href="#" target="_blank"><i class='bx bxl-instagram'></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End QuickView Modal Area -->

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

<!-- Mirrored from templates.envytheme.com/ejon/default/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Nov 2020 04:38:39 GMT -->
</html>
