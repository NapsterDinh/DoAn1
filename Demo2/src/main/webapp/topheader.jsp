<%-- 
    Document   : topheader
    Created on : Dec 15, 2020, 2:43:12 PM
    Author     : Napster
--%>

<%@page import="com.demo2.webmvc.model.UserAccount"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
    </head>
    <body>
        <!-- Start Top Header Area -->
        <div class="top-header-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="top-header-content">
                            <span>
                                <i class="flaticon-check"></i>
                                Free shipping on all orders over $50
                            </span>
                        </div>
                    </div>

                    <div class="col-lg-6 text-right">
                        <ul class="top-header-optional">
                            <li>
                                <div class="dropdown language-switcher d-inline-block">
                                    <button class="dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span>Language <i class='bx bx-chevron-down'></i></span>
                                    </button>

                                    <div class="dropdown-menu">
                                        <a href="#" class="dropdown-item d-flex align-items-center">
                                            <img src="assets/img/english.png" class="shadow-sm" alt="flag">
                                            <span>English</span>
                                        </a>
                                        <a href="#" class="dropdown-item d-flex align-items-center">
                                            <img src="assets/img/arab.png" class="shadow-sm" alt="flag">
                                            <span>العربيّة</span>
                                        </a>
                                        <a href="#" class="dropdown-item d-flex align-items-center">
                                            <img src="assets/img/germany.png" class="shadow-sm" alt="flag">
                                            <span>Deutsch</span>
                                        </a>
                                        <a href="#" class="dropdown-item d-flex align-items-center">
                                            <img src="assets/img/portugal.png" class="shadow-sm" alt="flag">
                                            <span>Português</span>
                                        </a>
                                        <a href="#" class="dropdown-item d-flex align-items-center">
                                            <img src="assets/img/china.png" class="shadow-sm" alt="flag">
                                            <span>简体中文</span>
                                        </a>
                                    </div>
                                </div>
                            </li>
                            <%
                                String style_profile="none";
                                String style_login ="inline-block";
                                UserAccount loginedUser = (UserAccount) session.getAttribute("loginedUser");
                                
                            %>
                            <li style="display: ${style_login};">
                                <i class='bx bxs-lock-alt' "></i>
                                <span><a href="${pageContext.request.contextPath}/login">Login</a> Or <a href="${pageContext.request.contextPath}/register">Register</a></span>
                            </li>
                            
                            <li class="profile" style="display: ${style_profile};">
                                <div class="dropdown language-switcher d-inline-block">
                                    <button class="dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span>
                                            <img style="display: none${style_avatar};" src="uploads/${loginedUser.getAvatar()}"></img>
                                            <img style="${style_avatar}" class="avatar" src="http://graph.facebook.com/${loginedUser.getId_token()}/picture?type=large"></img>
                                            ${loginedUser.getName_user()}
                                            <i style="top: 2px;" class='bx bx-chevron-down'>
                                            </i>
                                        </span>
                                    </button>   

                                    <div class="dropdown-menu">
                                        <a href="${pageContext.request.contextPath}/accountSetting" class="dropdown-item d-flex align-items-center">
                                            <span>Thông tin cá nhân</span>
                                        </a>
                                        <a href="#" class="dropdown-item d-flex align-items-center">
                                            <span>Lịch sử mua hàng</span>
                                        </a>
                                        <a href="${pageContext.request.contextPath}/OrderController?create=0" class="dropdown-item d-flex align-items-center">
                                            <span>Theo dõi đơn hàng</span>
                                        </a>
                                        <a href="${pageContext.request.contextPath}/logout" class="dropdown-item d-flex align-items-center">
                                            <span>Đăng xuất</span>
                                        </a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Top Header Area -->
        
    </body>
</html>
