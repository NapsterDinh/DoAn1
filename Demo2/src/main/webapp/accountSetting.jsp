<%-- 
    Document   : accountSetting
    Created on : Dec 15, 2020, 1:00:43 AM
    Author     : Napster
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zxx">
    
<!-- Mirrored from templates.envytheme.com/ejon/default/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Nov 2020 04:38:46 GMT -->
<head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS --> 
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
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <!-- Style CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <!-- Responsive CSS -->
		<link rel="stylesheet" href="assets/css/responsive.css">
        <!-- FontAwesome-->
        <link href="assets/css/fontawesome-free-5.15.1-web/css/all.css" rel="stylesheet"> <!--load all styles -->

		<title>Ejon - Electronics eCommerce HTML Template</title>

        <link rel="icon" type="image/png" href="assets/img/favicon.png">
        <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
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
        <style>
        </style>
        <%@include file="topheader.jsp" %>
        
        <%@include file="middleheader.jsp" %>
        <!-- Start Login Area -->
        <section class="login-area ptb-50">
            <div class="container">
                <div class="page-section">
                    <!-- grid row -->
                    <div class="row">
						<div class="col-md-3 col-xl-2">

							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">Profile Settings</h5>
								</div>

								<div class="list-group list-group-flush" role="tablist">
									<a class="list-group-item list-group-item-action active" data-toggle="list" href="#account" role="tab">
          Account
        </a>
									<a class="list-group-item list-group-item-action" data-toggle="list" href="#password" role="tab">
          Password
        </a>
									<a class="list-group-item list-group-item-action" data-toggle="list" href="#" role="tab">
          Privacy and safety
        </a>
									<a class="list-group-item list-group-item-action" data-toggle="list" href="#" role="tab">
          Email notifications
        </a>
									<a class="list-group-item list-group-item-action" data-toggle="list" href="#" role="tab">
          Web notifications
        </a>
									<a class="list-group-item list-group-item-action" data-toggle="list" href="#" role="tab">
          Widgets
        </a>
									<a class="list-group-item list-group-item-action" data-toggle="list" href="#" role="tab">
          Your data
        </a>
									<a class="list-group-item list-group-item-action" data-toggle="list" href="#" role="tab">
          Delete account
        </a>
								</div>
							</div>
						</div>

						<div class="col-md-9 col-xl-10">
							<div class="tab-content">
								<div class="tab-pane fade show active" id="account" role="tabpanel">

									<div class="card">
										<div class="card-header">
											<div class="card-actions float-right">
												<div class="dropdown show">
													<a href="#" data-toggle="dropdown" data-display="static">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal align-middle"><circle cx="12" cy="12" r="1"></circle><circle cx="19" cy="12" r="1"></circle><circle cx="5" cy="12" r="1"></circle></svg>
                </a>

													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" href="#">Action</a>
														<a class="dropdown-item" href="#">Another action</a>
														<a class="dropdown-item" href="#">Something else here</a>
													</div>
												</div>
											</div>
											<h5 class="card-title mb-0">Public info</h5>
										</div>
										<div class="card-body">
                                                                                        <%
                                                                                                //UserAccount temp_user = (UserAccount)session.getAttribute("temp_user");
                                                                                                
                                                                                                String error_msg = "";
                                                                                                if(request.getAttribute("errorMessage")!=null)
                                                                                                {
                                                                                                    error_msg = request.getAttribute("errorMessage").toString();
                                                                                                }
                                                                                                
                                                                                        %>
                                                                                        <form id="form1" onsubmit="myFunction()" action = "${pageContext.request.contextPath}/upload" method = "post"  enctype="multipart/form-data">
                                                                                                <h3><%=error_msg%></h3>
												<div class="row">
													<div class="col-md-8">
														<div class="form-group">
															<label for="inputUsername">Username</label>
                                                                                                                        <input value="${loginedUser.getUsername()}" readonly type="text" class="form-control" id="inputUsername" placeholder="Username">
														</div>
														<div class="form-group">
															<label for="inputUsername">Biography</label>
															<textarea rows="2" class="form-control" id="inputBio" placeholder="Tell something about yourself"></textarea>
														</div>
													</div>
                                                                                                                        <%
                                                                                                                            
                                                                                                                        %>
													<div class="col-md-4">
														<div class="text-center">
                                                                                                                    <img style="background-color: aliceblue;
                                                                                                                        height: 128px;
                                                                                                                        object-fit: cover;" id="output" src="<%=source_avatar%>" class="rounded-circle img-responsive mt-2" width="128" height="128">
															<div class="mt-2">
                                                                                                                            <button type="button" class="btn btn-primary" onclick="myClick()">
                                                                                                                                
                                                                                                                                <input id="inputImage" style="display: none;" accept="image/*" onchange="loadFile(event)" type="file" class="validation-file btn btn-primary" name="validation-file">                                                                                                                                   
                                                                                                                               
                                                                                                                                    <i class="fas fa-upload"></i> Upload
                                                                                                                                </button>
															</div>
                                                                                                                        <style>
                                                                                                                            #output_str{
                                                                                                                                color: red; display: none;
                                                                                                                            }
                                                                                                                        </style>
                                                                                                                        <small style="" id="output_str">Please select a valid image!!!</small>
															<small>For best results, use an image at least 128px by 128px in .jpg format</small>
                                                                                                                        
														</div>
													</div>
												</div>

												<button type="submit" class="btn btn-primary">Save changes</button>
											</form>

										</div>
									</div>

									<div class="card">
										<div class="card-header">
											<div class="card-actions float-right">
												<div class="dropdown show">
													<a href="#" data-toggle="dropdown" data-display="static">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-horizontal align-middle"><circle cx="12" cy="12" r="1"></circle><circle cx="19" cy="12" r="1"></circle><circle cx="5" cy="12" r="1"></circle></svg>
                </a>

													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" href="#">Action</a>
														<a class="dropdown-item" href="#">Another action</a>
														<a class="dropdown-item" href="#">Something else here</a>
													</div>
												</div>
											</div>
                                                                                    <h5 id="private" class="card-title mb-0">Private info</h5>
										</div>
										<div class="card-body">
											<form action="${pageContext.request.contextPath}/accountSetting" method="post">
                                                                                            <h3>${errorString}</h3>
                                                                                            
												<div class="form-row">
													<div class="form-group col-md-6">
														<label for="inputFirstName">Full name</label>
														<input type="text" value="${init_user.getName_user()}" class="form-control" required="" placeholder="Nguyễn Văn A">
                                                                                                                <small class="font-13 text-muted">e.g "Dinh Tan Tu Dep Trai"</small>
                                                                                                        </div>
                                                                                                        <div class="form-group col-md-6">
                                                                                                                <label>Telephone</label>
                                                                                                                <input type="text" class="form-control" value="${init_user.getPhone()}" required="" placeholder="0123456789" data-mask="000-000-0000" autocomplete="off" maxlength="11">
                                                                                                                <small class="font-13 text-muted">e.g "xxx-xxx-xxxx"</small>
                                                                                                        </div>
													
												</div>
                                                                                                <div class="form-group">
                                                                                                        <label class="form-label">Email</label>
                                                                                                        <input value="${init_user.getEmail()}" required="" placeholder="abc@examle.com" type="text" class="form-control" name="validation-email" placeholder="Email">
                                                                                                        <small class="form-text text-muted">e.g "tudeptrai123@gmail.com".</small>
                                                                                                </div>
												
                                                                                            <div class="form-group" style="display: flex;">
                                                                                                <div class="form-group" style="width:50%">
                                                                                                    <label class="form-label">Date Only</label>
                                                                                                    <div class="input-group date" id="datetimepicker-date" data-target-input="nearest">
                                                                                                        <input id="birth" type="text" name="birth" value="${init_user.getBirth()}" class="form-control datetimepicker-input" data-target="#datetimepicker-date">
                                                                                                            <div class="input-group-append" data-target="#datetimepicker-date" data-toggle="datetimepicker">
                                                                                                                    <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                                                                                            </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                           
                                                                                             <div class="form-group" style="margin-left: 35px;width: 50%;">
                                                                                                 <label for="customRadio1">Gender</label>
                                                                                                 <div style="display: flex; padding-top: 6px; justify-content: space-between;" class="gender-radio">
                                                                                                     <div style="padding-left: 20px;" class="custom-control custom-radio">
                                                                                                     <input id="gender" type="radio" name="Male" class="custom-control-input" id="customRadio1" checked="">
                                                                                                     <label class="custom-control-label" for="customRadio1">Male</label>
                                                                                                   </div>
                                                                                                   <div class="custom-control custom-radio">
                                                                                                     <input id="gender" type="radio" name="Female" class="custom-control-input" id="customRadio2">
                                                                                                     <label class="custom-control-label" for="customRadio2">Female</label>
                                                                                                   </div>
                                                                                                   <div class="custom-control custom-radio">
                                                                                                     <input id="gender" type="radio" name="Undentified" class="custom-control-input" id="customRadio3">
                                                                                                     <label class="custom-control-label" for="customRadio3">Undentified</label>
                                                                                                   </div>
                                                                                                 </div>
                                                                                             </div>

                                                                                         </div>
												<div class="form-group">
                                                                                                    <label for="input04">Address</label>
                                                                                                    <input type="text" name="address" class="form-control" id="input04" value="${init_user.getAddress()}" placeholder="90/1 Đường số 8" required=""> 
                                                                                                    <div class="valid-feedback"> Success! You've done it. </div>
                                                                                                </div>
                                                                                                 <div class="form-group">
                                                                                                     
                                                                                                     <div class="form-group" style="display: flex; justify-content: space-between;">
                                                                                                         <div class="input-field" style="width:40%;cursor: pointer;">
                                                                                                             <select name="province" id="province" class="form-control select2"  data-toggle="select2">
                                                                                                                 <option>Select Province</option>
                                                                                                            </select>
                                                                                                             <input id="val-province" type="hidden" value="3">
                                                                                                        </div>
                                                                                                         <div class="input-field" style="width:40%;cursor: pointer;">
                                                                                                             <select name="district" id="district" class="form-control select2" data-toggle="select2">
                                                                                                                 <option>Select District</option>
                                                                                                            </select>
                                                                                                        </div>
                                                                                                     </div>

                                                                                                    <div class="input-field" style="cursor: pointer;">
                                                                                                        <select name="town" id="town" class="form-control select2" data-toggle="select2">
                                                                                                                 <option>Select Town</option>
                                                                                                         </select>            
                                                                                                   </div>
                                                                                                 </div>
												<button type="submit" class="btn btn-primary">Save changes</button>
											</form>

										</div>
									</div>

								</div>
								<div class="tab-pane fade" id="password" role="tabpanel">
									<div class="card">
										<div class="card-body">
											<h5 class="card-title">Password</h5>

											<form>
												<div class="form-group">
													<label for="inputPasswordCurrent">Current password</label>
													<input type="password" class="form-control" id="inputPasswordCurrent">
													<small><a href="#">Forgot your password?</a></small>
												</div>
												<div class="form-group">
													<label for="inputPasswordNew">New password</label>
													<input type="password" class="form-control" id="inputPasswordNew">
												</div>
												<div class="form-group">
													<label for="inputPasswordNew2">Verify password</label>
													<input type="password" class="form-control" id="inputPasswordNew2">
												</div>
												<button type="submit" class="btn btn-primary">Save changes</button>
											</form>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
                    <!-- /grid row -->
                  </div>
                
            </div>
        </section>
        <!-- End Login Area -->
       
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
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
        <script src="assets/js/main.js"></script>\
        
        <script type="text/javascript">
            $(document).ready(function () {
                $.ajax({
                    url: "ProvinceController",
                    method: "GET",
                    data: {operation: 'province'},
                    success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        let obj = $.parseJSON(data);
                        $.each(obj, function (key, value) {
                            $('#province').append('<option value="' + value.id + '">' + value.name + '</option>')
                        });
                        $('select').FormSelect();
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        $('#province').append('<option>Province Unavailable</option>');
                    },
                    cache: false
                });


                $('#province').change(function () {
                    $('#district').find('option').remove();
                    $('#district').append('<option>Select District</option>'); 
                    $('#town').find('option').remove();
                    $('#town').append('<option>Select Town</option>');

                    let cid = $('#province').val();
                    let data = {
                        operation: "district",
                        id: cid
                    };

                    $.ajax({
                        url: "ProvinceController",
                        method: "GET",
                        data: data,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            let obj = $.parseJSON(data);
                            $.each(obj, function (key, value) {
                                $('#district').append('<option value="' + value.id + '">' + value.name + '</option>')
                            });
                            $('select').FormSelect();
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            $('#district').append('<option>District Unavailable</option>');
                        },
                        cache: false
                    });
                });
                
                $('#district').change(function () {
                    $('#town').find('option').remove();
                    $('#town').append('<option>Select Town</option>');

                    let sid = $('#district').val();
                    let data = {
                        operation: "town",
                        id: sid
                    };

                    $.ajax({
                        url: "ProvinceController",
                        method: "GET",
                        data: data,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            let obj = $.parseJSON(data);
                            $.each(obj, function (key, value) {
                                $('#town').append('<option value="' + value.id + '">' + value.name + '</option>')
                            });
                            $('select').FormSelect();
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            $('#town').append('<option>Town Unavailable</option>');
                        },
                        cache: false
                    });
                });

            });
            
        </script> 
        
	
        <script src="js/app.js" ></script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			// Select2
			$(".select2").each(function() {
				$(this)
					.wrap("<div class=\"position-relative\"></div>")
					.select2({
						placeholder: "Select value",
						dropdownParent: $(this).parent()
					});
			})
			// Daterangepicker
			$("input[name=\"daterange\"]").daterangepicker({
				opens: "left"
			});
			$("input[name=\"datetimes\"]").daterangepicker({
				timePicker: true,
				opens: "left",
				startDate: moment().startOf("hour"),
				endDate: moment().startOf("hour").add(32, "hour"),
				locale: {
					format: "M/DD hh:mm A"
				}
			});
			$("input[name=\"datesingle\"]").daterangepicker({
				singleDatePicker: true,
				showDropdowns: true
			});
			// Datetimepicker
			$('#datetimepicker-minimum').datetimepicker();
			$('#datetimepicker-view-mode').datetimepicker({
				viewMode: 'years'
			});
			$('#datetimepicker-time').datetimepicker({
				format: 'LT'
			});
			$('#datetimepicker-date').datetimepicker({
				format: 'L'
			});
			var start = moment().subtract(29, "days");
			var end = moment();

			function cb(start, end) {
				$("#reportrange span").html(start.format("MMMM D, YYYY") + " - " + end.format("MMMM D, YYYY"));
			}
			$("#reportrange").daterangepicker({
				startDate: start,
				endDate: end,
				ranges: {
					"Today": [moment(), moment()],
					"Yesterday": [moment().subtract(1, "days"), moment().subtract(1, "days")],
					"Last 7 Days": [moment().subtract(6, "days"), moment()],
					"Last 30 Days": [moment().subtract(29, "days"), moment()],
					"This Month": [moment().startOf("month"), moment().endOf("month")],
					"Last Month": [moment().subtract(1, "month").startOf("month"), moment().subtract(1, "month").endOf("month")]
				}
			}, cb);
			cb(start, end);
		});
	</script>
        <script>
          var loadFile = function(event) {
            var output = document.getElementById('output');
            output.src = URL.createObjectURL(event.target.files[0]);
            output.onload = function() {
              URL.revokeObjectURL(output.src) // free memory
            }
          };
          var myClick = function()
          {
              document.getElementById('inputImage').click();
          };
          var validation = document.getElementById("form1");
          var myFunction = function(){
              var inputImage = document.getElementById("inputImage").value;
              output = document.getElementById("output_str");
              if (inputImage!='') {
                  
                   output.style.display = "none";
              }
              else
              {
                  output.style.display = "block";
                   event.preventDefault();
              }
          };
                        /* When the user clicks on the button, 
              toggle between hiding and showing the dropdown content */
                var dropdownClick = function() {
                document.getElementsByClassName("dropdown-menu-right").classList.toggle('show');
              }

              // Close the dropdown if the user clicks outside of it
              window.onclick = function(event) {
                if (!event.target.matches('.dropbtn')) {
                  var dropdowns = document.getElementsByClassName("dropdown-content");
                  var i;
                  for (i = 0; i < dropdowns.length; i++) {
                    var openDropdown = dropdowns[i];
                    if (openDropdown.classList.contains('show')) {
                      openDropdown.classList.remove('show');
                    }
                  }
                }
              }
        </script>
        
    
    </body>

<!-- Mirrored from templates.envytheme.com/ejon/default/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Nov 2020 04:38:46 GMT -->
</html>