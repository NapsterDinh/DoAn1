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
    </body>
</html>
