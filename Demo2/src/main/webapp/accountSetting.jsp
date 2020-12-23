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
          .top-header-area {
            background-color: #ffffff;
            padding-top: 15px;
            padding-bottom: 15px;
        }
        .top-header-content span {
            color: #292929;
            font-size: 16px;
            font-weight: 400;
        }
        .top-header-optional li {
            color: #292929;
        }
        .top-header-optional .language-switcher .dropdown-toggle {
            color: #292929;
        }
        .top-header-optional .language-switcher .dropdown-menu .dropdown-item{
            color: #292929;
        }   
        .top-header-optional li i {
            color: #292929;
        }
        .top-header-optional li a {
            color: #292929;
        }
        </style>
        <%@include file="topheader.jsp" %>
        
        <%@include file="middleheader.jsp" %>
        <!-- Start Login Area -->
        <section class="login-area ptb-50">
            <div class="container">
                <div class="page-section">
                    <!-- grid row -->
                    <div class="row">
                      <!-- grid column -->
                      <div class="col-lg-4">
                        <!-- .card -->
                        <div class="card card-fluid">
                          <h6 class="card-header"> Your Details </h6>
                          <!-- .nav -->
                          <nav class="nav nav-tabs flex-column">
                            <a href="" class="nav-link active">Profile</a>
                            <a href="" class="nav-link">Account</a>
                            <a href="" class="nav-link">Billing</a>
                            <a href="" class="nav-link">Notifications</a>
                          </nav>
                          <!-- /.nav -->
                        </div>
                        <!-- /.card -->
                      </div>
                      <!-- /grid column -->
                      <!-- grid column -->
                      <div class="col-lg-8">
                        <!-- .card -->
                        <div class="card card-fluid">
                          <h6 class="card-header"> Public Profile </h6>
                          <!-- .card-body -->
                          <div class="card-body">
                            <!-- .media -->
                            <%
                                //UserAccount temp_user = (UserAccount)session.getAttribute("temp_user");
                                UserAccount init_user = (UserAccount)  session.getAttribute("init_user");
                                
                            %>
                            <!-- /.media -->
                            <form action="${pageContext.request.contextPath}/accountSetting" method="post" >
                              <!-- form row -->
                              <div class="form-row">
                                <!-- avatar -->
                                <div class="user-avatar user-avatar-xl fileinput-button">
                                  <div class="fileinput-button-label"> Change photo </div>
                                  <img src="uploads/${init_user.getAvatar()}" alt="User Avatar">
                                  <input id="fileupload-avatar" type="file" name="avatar"> </div>
                                <!-- /avatar -->
                                <!-- .media-body -->
                                <div class="media-body pl-3">
                                  <h3 style="font-size: 25px;" class="card-title"> Public avatar </h3>
                                  <h6 style="font-size: 13px;" class="card-subtitle text-muted"> Click the current avatar to change your photo. </h6>
                                  <p class="card-text">
                                    <small>JPG, GIF or PNG 400x400, &lt; 2 MB.</small>
                                  </p>
                                  <!-- The avatar upload progress bar -->
                                  <div id="progress-avatar" class="progress progress-xs fade">
                                    <div class="progress-bar progress-bar-striped progress-bar-animated bg-success" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                  </div>
                                  <!-- /avatar upload progress bar -->
                                </div>
                                <!-- /.media-body -->
                              </div>
                                  <h3>${errorString}</h3>
                              <!-- /form row -->
                              <div class="form-row">
                                <!-- form column -->
                                <div class="col-md-6 mb-3">
                                  <label for="input01">Full name</label>
                                  <input type="text" name="fullname" class="form-control" id="input01" value="${init_user.getName_user()}" placeholder="Nguyễn Văn A" required=""> 
                                  <div class="valid-feedback"> Success! You've done it. </div>
                                </div>
                                <!-- /form column -->
                                <!-- form column -->
                                <div class="col-md-6 mb-3">
                                  <label for="input02">Phone number</label>
                                  <input type="text" name="phone" class="form-control" id="input02" value="${init_user.getPhone()}" placeholder="032718231" required=""> 
                                  <div class="valid-feedback"> Success! You've done it. </div>
                                </div>
                                  
                                <!-- /form column -->
                              </div>
                              <div class="form-group">
                                <label for="input03">Email</label>
                                <input type="email" name="email" class="form-control" id="input03" value="${init_user.getEmail()}" placeholder="example@gmail.com" required=""> 
                                <div class="valid-feedback"> Success! You've done it. </div>
                            </div>
                            <div class="form-group" style="display: flex;">
                               <div class="form-group" style="width:50%">
                                    <label class="control-label" for="flatpickr-wrap">Date of Birth</label>
                                    <div class="input-group input-group-alt flatpickr" id="flatpickr9">
                                        <input id="datepicker" name="birth" type="text" class="form-control" data-input="" value="${init_user.getBirth()}" readonly="readonly">
                                      
                                    </div>
                                </div>
                                <div class="form-group" style="margin-left: 35px;width: 50%;">
                                    <label for="customRadio1">Gender</label>
                                    <div style="display: flex; padding-top: 6px; justify-content: space-between;" class="gender-radio">
                                        <div style="padding-left: 20px;" class="custom-control custom-radio">
                                        <input type="radio" name="Male" class="custom-control-input" id="customRadio1" checked="">
                                        <label class="custom-control-label" for="customRadio1">Male</label>
                                      </div>
                                      <div class="custom-control custom-radio">
                                        <input type="radio" name="Female" class="custom-control-input" id="customRadio2">
                                        <label class="custom-control-label" for="customRadio2">Female</label>
                                      </div>
                                      <div class="custom-control custom-radio">
                                        <input type="radio" name="Undentified" class="custom-control-input" id="customRadio3">
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
                                         <select name="province" class="form-control" style="cursor: pointer;" id="province">
                                            <option>Select Province</option>
                                        </select>
                                    </div>
                                     <div class="input-field" style="width:40%;cursor: pointer;">
                                         <select  name="district" class="form-control" style="cursor: pointer;" id="district">
                                            <option>Select District</option>
                                        </select>
                                    </div>
                                 </div>
                                 
                                <div class="input-field" style="cursor: pointer;">
                                    <select name="town" class="form-control" style="cursor: pointer;" id="town">
                                            <option>Select Town</option>
                                    </select>               
                               </div>
                             </div>
                              
                            
                              
                              <hr>
                              <!-- .form-actions -->
                              <div class="form-actions">
                                <button type="submit" class="btn btn-primary ml-auto">Update Profile</button>
                              </div>
                              <!-- /.form-actions -->
                            </form>
                          </div>
                          <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                      </div>
                      <!-- /grid column -->
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
        <script src="assets/css/flatpickr/flatpickr.min.js"></script>
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
        <script>
        $( function() {
          $( "#datepicker" ).datepicker();
        } );
        $( "#datepicker" ).datepicker({
            altFormat: "yyyy-mm-dd"
          });
  </script>

    
    </body>

<!-- Mirrored from templates.envytheme.com/ejon/default/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Nov 2020 04:38:46 GMT -->
</html>