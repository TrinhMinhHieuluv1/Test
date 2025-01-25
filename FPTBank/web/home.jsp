<%-- 
    Document   : home.jsp
    Created on : Jan 16, 2025, 12:34:43 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>

        <title>TIMI - Finance</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="HandheldFriendly" content="true">
        <meta name="author" content="bslthemes" />

        <!-- switzer font css -->
        <link rel="stylesheet" href="fonts/css/switzer.css" type="text/css" media="all">
        <!-- font awesome css -->
        <link rel="stylesheet" href="fonts/css/font-awesome.min.css" type="text/css" media="all">
        <!-- bootstrap grid css -->
        <link rel="stylesheet" href="css/plugins/bootstrap-grid.css" type="text/css" media="all">
        <!-- swiper css -->
        <link rel="stylesheet" href="css/plugins/swiper.min.css" type="text/css" media="all">
        <!-- magnific popup -->
        <link rel="stylesheet" href="css/plugins/magnific-popup.css" type="text/css" media="all">
        <!-- plax css -->
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all">

        <!-- Favicon -->
        <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon">
        <link rel="icon" href="img/favicon.png" type="image/x-icon">

    </head>

    <body>


        <!-- wrapper -->
        <div id="smooth-wrapper" class="mil-wrapper">

            <!-- preloader -->
            <div class="mil-preloader">

            </div>
            <!-- preloader end -->

            <!-- scroll progress -->
            <div class="mil-progress-track">
                <div class="mil-progress"></div>
            </div>
            <!-- scroll progress end -->

            <!-- back to top -->
            <div class="progress-wrap active-progress"></div>

            <!-- top panel end -->
            <div class="mil-top-panel">
                <div class="container">
                    <a href="/timibank/home" class="mil-logo">
                        <img src="img/logo1.png" alt="Plax" width="200">
                    </a>
                    <nav class="mil-top-menu">
                        <ul>
                            <li class="mil-has-children mil-active">
                                <a href="#.">Home</a>
                                <ul>

                                    <li><a href="/timibank/home">Trang trủ</a></li>
                                    <li><a href="home-2.html">Gửi tiết kiệm</a></li>
                                    <li><a href="home-3.html">Type 3</a></li>
                                    <li><a href="home-4.html">Type 4</a></li>
                                    <li><a href="home-5.html">Type 5</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="about.jsp">About</a>
                            </li>
                            <li>
                                <a href="services.jsp">Services</a>
                            </li>
                            <li class="mil-has-children">
                                <a href="#.">Blog</a>
                                <ul>
                                    <li><a href="blog.jsp">Blog list</a></li>
                                    <li><a href="publication.jsp">Blog details</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="contact.jsp">Contact</a>
                            </li>
                            <li class="mil-has-children">
                                <a href="#.">Pages</a>
                                <ul>
                                    <li><a href="career.jsp">Career</a></li>
                                    <li><a href="career-details.jsp">Career details</a></li>
                                    <li><a href="price.jsp">Pricing</a></li>
                                    <li><a href="register.jsp">Register</a></li>

                                </ul>
                            </li>
                        </ul>
                    </nav>
                    <div class="mil-menu-buttons">
                        <c:if test="${sessionScope.account == null}">
                            <a href="/timibank/login" class="mil-btn mil-sm">Log in</a>
                            <a href="/timibank/register" class="mil-btn mil-sm" style="margin-left: 10px">Register</a>
                        </c:if>
                        <c:if test="${sessionScope.account != null}">
                            <nav class="mil-top-menu">
                                <ul>
                                    <li class="mil-has-children ">
                                        <a href="#." class="mil-btn mil-sm">My Account</a>
                                        <ul style="list-style-type: none">
                                            <li><a href="/timibank/profile">My Profile</a></li>
                                            <li><a href="/timibank/change-password">Change Password</a></li>
                                            <li><a href="/timibank/purchase">My Purchase</a></li>
                                            <li><a href="/timibank/logout">Log out</a></li>
                                        </ul>
                                    </li>   
                                </ul>
                            </nav>
                        </c:if>
                    </div>
                </div>
            </div>
            <!-- top panel end -->

            <!-- content -->
            <div id="smooth-content">

                <!-- banner -->
                <div class="mil-banner mil-dissolve">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-xl-6">
                                <div class="mil-banner-text">
                                    <h6 class="mil-text-gradient-2 mil-mb-20">You want to borrow money, want to invest</h6>
                                    <h1 class="mil-display mil-text-gradient-3 mil-mb-60">WELCOME TO FPT BANK</h1>
                                    <div class="mil-buttons-frame">
                                        <a href="register.jsp" class="mil-btn mil-md mil-add-arrow">Try</a>
                                        <a href="https://www.youtube.com/watch?v=jnUDgs3wwFA" class="mil-btn mil-md mil-light mil-add-play has-popup-video">Guide</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="mil-banner-img">
                                    <img src="img/home-2/1.jpg" alt="banner" style="max-width: 114%; transform: translateX(5%)">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- banner end -->

                <!-- brands -->
                <div class="mil-brands mil-p-160-160">
                    <div class="container">
                        <h5 class="mil-text-center mil-soft mil-mb-60 mil-up">Join over 7,000 satisfied customers who enjoy our service!</h5>
                        <div class="row justify-content-center">
                            <div class="col-3 col-md-2 mil-text-center">
                                <div class="mil-brand">
                                    <img src="img/brands/1.svg" alt="brand" class="mil-up">
                                </div>
                            </div>
                            <div class="col-3 col-md-2 mil-text-center">
                                <div class="mil-brand">
                                    <img src="img/brands/2.svg" alt="brand" class="mil-up">
                                </div>
                            </div>
                            <div class="col-3 col-md-2 mil-text-center">
                                <div class="mil-brand">
                                    <img src="img/brands/3.svg" alt="brand" class="mil-up">
                                </div>
                            </div>
                            <div class="col-3 col-md-2">
                                <div class="mil-brand mil-text-center">
                                    <img src="img/brands/4.svg" alt="brand" class="mil-up">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- brands end -->

                <!-- features -->
                <div class="mil-features mil-p-0-80">
                    <div class="container">
                        <div class="row flex-sm-row-reverse justify-content-between align-items-center">
                            <div class="col-xl-6 mil-mb-80">
                                <h2 class="mil-mb-30 mil-up">Our essence, your experience</h2>
                                <p class="mil-text-m mil-soft mil-mb-60 mil-up">Visualize your financial progress with detailed reports and graphs <br>that give you visual insights into your spending and saving habits.</p>
                                <ul class="mil-list-2 mil-type-2">
                                    <li>
                                        <div class="mil-up">
                                            <h5 class="mil-mb-15">Plax® Global Service</h5>
                                            <p class="mil-text-m mil-soft">Experience exceptional service around the world. <br>With our Plax® Global Service, we provide assistance <br>and support, wherever you are, to ensure your peace.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="mil-up">
                                            <h5 class="mil-mb-15">Personalized Rewards Program</h5>
                                            <p class="mil-text-m mil-soft">Enjoy a rewards program that fits your lifestyle. Earn <br>points with every purchase and access exclusive <br>rewards, from trips to high-quality products.</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-xl-6 mil-mb-80">
                                <div class="mil-image-frame">
                                    <img src="img/home-2/2.png" alt="image" class="mil-up">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- features end -->

                <!-- call to action -->
                <div class="mil-cta mil-up">
                    <div class="container">
                        <div class="mil-out-frame mil-visible mil-illustration-fix mil-p-160-0">
                            <div class="row align-items-end">
                                <div class="mil-text-center">
                                    <h2 class="mil-mb-30 mil-up">Protected coverage on your <br>purchases with Plax Standard</h2>
                                    <p class="mil-text-m mil-soft mil-mb-60 mil-up">Enjoy instant coverage against theft or accidental damage <br>for the first forty-five (45) days from the date of purchase.</p>
                                </div>
                            </div>
                            <div class="mil-illustration-absolute mil-up">
                                <img src="img/home-2/3.png" alt="illustration">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- call to action end -->

                <!-- icon boxes -->
                <div class="icon-boxes mil-p-160-130">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-4 mil-mb-30">
                                <div class="mil-icon-box mil-with-bg mil-center mil-up">
                                    <img src="img/home-2/icons/1.svg" alt="icon" class="mil-mb-30 mil-up">
                                    <h5 class="mil-mb-20 mil-up">Make your Purchase</h5>
                                    <p class="mil-text-s mil-soft mil-up">Enjoy instant coverage against theft or accidental damage for the first forty-five (45) days from the date of purchase.</p>
                                </div>
                            </div>
                            <div class="col-xl-4 mil-mb-30">
                                <div class="mil-icon-box mil-with-bg mil-center mil-up">
                                    <img src="img/home-2/icons/2.svg" alt="icon" class="mil-mb-30 mil-up">
                                    <h5 class="mil-mb-20 mil-up">Manage your Rewards</h5>
                                    <p class="mil-text-s mil-soft mil-up">Rewards easily, Access a personalized rewards program that fits your lifestyle and preferences.</p>
                                </div>
                            </div>
                            <div class="col-xl-4 mil-mb-30">
                                <div class="mil-icon-box mil-with-bg mil-center mil-up">
                                    <img src="img/home-2/icons/3.svg" alt="icon" class="mil-mb-30 mil-up">
                                    <h5 class="mil-mb-20 mil-up">Access Exclusive Benefits</h5>
                                    <p class="mil-text-s mil-soft mil-up">From special offers to added security, every transaction is not just a purchase, but an open door to a range.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- icon boxes end -->

                <!-- call to action -->
                <div class="mil-cta mil-up">
                    <div class="container">
                        <div class="mil-out-frame mil-p-160-100">
                            <div class="row align-items-end">
                                <div class="col-xl-8 mil-mb-80-adaptive-30">
                                    <h2 class="mil-up">Innovation and Efficiency in Every Transaction</h2>
                                </div>
                                <div class="col-xl-4 mil-mb-80 mil-up">
                                    <a href="register.jsp" class="mil-btn mil-m mil-add-arrow mil-adaptive-right">Learn More</a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-4 mil-mb-60">
                                    <div class="mil-icon-box">
                                        <img src="img/home-1/icons/1.svg" alt="icon" class="mil-mb-30 mil-up">
                                        <h5 class="mil-mb-30 mil-up">Unmatched Speed</h5>
                                        <p class="mil-text-m mil-soft mil-up">Make instant transfers and experience <br>Plax's unparalleled speed with every transaction.</p>
                                    </div>
                                </div>
                                <div class="col-xl-4 mil-mb-60">
                                    <div class="mil-icon-box">
                                        <img src="img/home-1/icons/2.svg" alt="icon" class="mil-mb-30 mil-up">
                                        <h5 class="mil-mb-30 mil-up">Extensive Global Network</h5>
                                        <p class="mil-text-m mil-soft mil-up">Connect with the world through our <br>global network that spans more than <br>170 countries.</p>
                                    </div>
                                </div>
                                <div class="col-xl-4 mil-mb-60">
                                    <div class="mil-icon-box">
                                        <img src="img/home-1/icons/3.svg" alt="icon" class="mil-mb-30 mil-up">
                                        <h5 class="mil-mb-30 mil-up">Advanced Security</h5>
                                        <p class="mil-text-m mil-soft mil-up">Protect your assets with our robust <br>security protocols and cutting-edge <br>technologies.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- call to action end -->

                <!-- features -->
                <div class="mil-features mil-p-160-80">
                    <div class="container">
                        <div class="row justify-content-between align-items-center">
                            <div class="col-xl-6 mil-mb-80">
                                <h2 class="mil-mb-30 mil-up">Plax Standard unusual activity detection</h2>
                                <p class="mil-text-m mil-soft mil-mb-60 mil-up">Keep track of your financial activity and the response to alert. <br>Your security is our priority, are always one step forward.</p>
                                <ul class="mil-list-2 mil-type-2 mil-mb-60">
                                    <li>
                                        <div class="mil-up">
                                            <h5 class="mil-mb-15">Connected device management</h5>
                                            <p class="mil-text-m mil-soft">Plax monitors the devices connected to your <br>account. If we detect activity from a new device or <br>an unusual change, we will notify you.</p>
                                        </div>
                                    </li>
                                </ul>
                                <div class="mil-up"><a href="#." class="mil-btn mil-button-transform mil-m mil-add-arrow">More Information</a></div>
                            </div>
                            <div class="col-xl-6 mil-mb-80">
                                <img src="img/home-2/4.png" alt="image" class="mil-up" style="width: 115%">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- features end -->

                <!-- features -->
                <div class="mil-features mil-p-0-80">
                    <div class="container">
                        <div class="row flex-sm-row-reverse justify-content-between align-items-center">
                            <div class="col-xl-6 mil-mb-80">
                                <h2 class="mil-mb-30 mil-up">Instant Alerts & Notifications with Plax</h2>
                                <p class="mil-text-m mil-soft mil-mb-60 mil-up">Visualize your financial progress with detailed reports and graphs <br>that give you visual insights into your spending and saving habits.</p>
                                <ul class="mil-list-2 mil-type-2">
                                    <li>
                                        <div class="mil-up">
                                            <h5 class="mil-mb-15">Security in real time</h5>
                                            <p class="mil-text-m mil-soft">Notifications allow you to take immediate action in <br>case of unauthorized transactions or unusual activities.</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="mil-up">
                                            <h5 class="mil-mb-15">Notification History</h5>
                                            <p class="mil-text-m mil-soft">Keep track of your financial activity and the response to alert. <br>Your security is our priority, are always one step forward.</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-xl-5 mil-mb-80">
                                <img src="img/home-2/5.png" alt="image" class="mil-up" style="width: 100%">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- features end -->

                <!-- testimonials -->
                <div class="mil-testimonials mil-p-0-160">
                    <div class="container">
                        <div class="swiper-container mil-testimonials-2 mil-up">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <blockquote class="mil-with-bg">
                                        <svg width="50" height="32" viewBox="0 0 50 32" fill="none" xmlns="http://www.w3.org/2000/svg" class="mil-mb-30 mil-up mil-accent">
                                        <path d="M13.0425 9.59881C13.734 7.27646 15.0099 5.16456 16.7515 3.45982C17.0962 3.11455 17.2958 2.65336 17.31 2.16891C17.3243 1.68445 17.1523 1.2126 16.8285 0.848135L16.6225 0.619235C16.3552 0.313531 15.9908 0.106228 15.5887 0.0311485C15.1866 -0.0439312 14.7706 0.0176452 14.4085 0.205827C-0.299477 8.01918 -0.116489 18.6169 0.0295105 20.4165C0.0195105 20.6139 -0.000488281 20.8112 -0.000488281 21.0085C0.0518962 23.1543 0.724816 25.2405 1.93898 27.0214C3.15314 28.8023 4.85796 30.2037 6.85252 31.0604C8.84709 31.9171 11.0483 32.1935 13.1967 31.8569C15.3452 31.5203 17.3514 30.5848 18.9788 29.1606C20.6063 27.7364 21.7873 25.8829 22.3826 23.8185C22.9779 21.7541 22.9627 19.5648 22.3389 17.5086C21.715 15.4524 20.5085 13.615 18.8614 12.2129C17.2144 10.8108 15.1954 9.90246 13.0425 9.59487V9.59881Z" fill="#03A6A6" />
                                        <path d="M40.2255 9.59881C40.9171 7.27648 42.193 5.16459 43.9345 3.45982C44.2793 3.11455 44.4788 2.65336 44.4931 2.16891C44.5074 1.68445 44.3353 1.2126 44.0115 0.848135L43.8055 0.619235C43.5382 0.313531 43.1738 0.106228 42.7717 0.0311485C42.3696 -0.0439312 41.9536 0.0176452 41.5915 0.205827C26.8835 8.01918 27.0665 18.6169 27.2115 20.4165C27.2015 20.6139 27.1815 20.8112 27.1815 21.0085C27.2332 23.1544 27.9055 25.241 29.1191 27.0224C30.3328 28.8038 32.0373 30.2057 34.0318 31.063C36.0262 31.9203 38.2274 32.1972 40.3761 31.8611C42.5248 31.525 44.5313 30.5899 46.1591 29.166C47.787 27.742 48.9684 25.8887 49.5641 23.8242C50.1599 21.7598 50.1451 19.5704 49.5215 17.514C48.8979 15.4576 47.6915 13.6199 46.0445 12.2176C44.3975 10.8152 42.3785 9.90659 40.2255 9.59881Z" fill="#03A6A6" />
                                        </svg>
                                        <p class="mil-text-m mil-mb-30 mil-up">I had never felt so connected to my finances. The instant alerts from Plax keep me informed in real time, giving me a feeling of total control. But the result, the lion needs to drink members.</p>
                                        <div class="mil-customer">
                                            <img src="img/faces/1.jpg" alt="Customer" class="mil-up">
                                            <h6 class="mil-up">Rüdiger Karlsen</h6>
                                        </div>
                                    </blockquote>
                                </div>
                                <div class="swiper-slide">
                                    <blockquote class="mil-with-bg">
                                        <svg width="50" height="32" viewBox="0 0 50 32" fill="none" xmlns="http://www.w3.org/2000/svg" class="mil-mb-30 mil-up mil-accent">
                                        <path d="M13.0425 9.59881C13.734 7.27646 15.0099 5.16456 16.7515 3.45982C17.0962 3.11455 17.2958 2.65336 17.31 2.16891C17.3243 1.68445 17.1523 1.2126 16.8285 0.848135L16.6225 0.619235C16.3552 0.313531 15.9908 0.106228 15.5887 0.0311485C15.1866 -0.0439312 14.7706 0.0176452 14.4085 0.205827C-0.299477 8.01918 -0.116489 18.6169 0.0295105 20.4165C0.0195105 20.6139 -0.000488281 20.8112 -0.000488281 21.0085C0.0518962 23.1543 0.724816 25.2405 1.93898 27.0214C3.15314 28.8023 4.85796 30.2037 6.85252 31.0604C8.84709 31.9171 11.0483 32.1935 13.1967 31.8569C15.3452 31.5203 17.3514 30.5848 18.9788 29.1606C20.6063 27.7364 21.7873 25.8829 22.3826 23.8185C22.9779 21.7541 22.9627 19.5648 22.3389 17.5086C21.715 15.4524 20.5085 13.615 18.8614 12.2129C17.2144 10.8108 15.1954 9.90246 13.0425 9.59487V9.59881Z" fill="#03A6A6" />
                                        <path d="M40.2255 9.59881C40.9171 7.27648 42.193 5.16459 43.9345 3.45982C44.2793 3.11455 44.4788 2.65336 44.4931 2.16891C44.5074 1.68445 44.3353 1.2126 44.0115 0.848135L43.8055 0.619235C43.5382 0.313531 43.1738 0.106228 42.7717 0.0311485C42.3696 -0.0439312 41.9536 0.0176452 41.5915 0.205827C26.8835 8.01918 27.0665 18.6169 27.2115 20.4165C27.2015 20.6139 27.1815 20.8112 27.1815 21.0085C27.2332 23.1544 27.9055 25.241 29.1191 27.0224C30.3328 28.8038 32.0373 30.2057 34.0318 31.063C36.0262 31.9203 38.2274 32.1972 40.3761 31.8611C42.5248 31.525 44.5313 30.5899 46.1591 29.166C47.787 27.742 48.9684 25.8887 49.5641 23.8242C50.1599 21.7598 50.1451 19.5704 49.5215 17.514C48.8979 15.4576 47.6915 13.6199 46.0445 12.2176C44.3975 10.8152 42.3785 9.90659 40.2255 9.59881Z" fill="#03A6A6" />
                                        </svg>
                                        <p class="mil-text-m mil-mb-30 mil-up">Plax Standard has proven to be more than a card; it is my financial defender. Proactive alerts give me confidence that my security is in good hands.</p>
                                        <div class="mil-customer">
                                            <img src="img/faces/2.jpg" alt="Customer" class="mil-up">
                                            <h6 class="mil-up">Branka Berg</h6>
                                        </div>
                                    </blockquote>
                                </div>
                                <div class="swiper-slide">
                                    <blockquote class="mil-with-bg">
                                        <svg width="50" height="32" viewBox="0 0 50 32" fill="none" xmlns="http://www.w3.org/2000/svg" class="mil-mb-30 mil-up mil-accent">
                                        <path d="M13.0425 9.59881C13.734 7.27646 15.0099 5.16456 16.7515 3.45982C17.0962 3.11455 17.2958 2.65336 17.31 2.16891C17.3243 1.68445 17.1523 1.2126 16.8285 0.848135L16.6225 0.619235C16.3552 0.313531 15.9908 0.106228 15.5887 0.0311485C15.1866 -0.0439312 14.7706 0.0176452 14.4085 0.205827C-0.299477 8.01918 -0.116489 18.6169 0.0295105 20.4165C0.0195105 20.6139 -0.000488281 20.8112 -0.000488281 21.0085C0.0518962 23.1543 0.724816 25.2405 1.93898 27.0214C3.15314 28.8023 4.85796 30.2037 6.85252 31.0604C8.84709 31.9171 11.0483 32.1935 13.1967 31.8569C15.3452 31.5203 17.3514 30.5848 18.9788 29.1606C20.6063 27.7364 21.7873 25.8829 22.3826 23.8185C22.9779 21.7541 22.9627 19.5648 22.3389 17.5086C21.715 15.4524 20.5085 13.615 18.8614 12.2129C17.2144 10.8108 15.1954 9.90246 13.0425 9.59487V9.59881Z" fill="#03A6A6" />
                                        <path d="M40.2255 9.59881C40.9171 7.27648 42.193 5.16459 43.9345 3.45982C44.2793 3.11455 44.4788 2.65336 44.4931 2.16891C44.5074 1.68445 44.3353 1.2126 44.0115 0.848135L43.8055 0.619235C43.5382 0.313531 43.1738 0.106228 42.7717 0.0311485C42.3696 -0.0439312 41.9536 0.0176452 41.5915 0.205827C26.8835 8.01918 27.0665 18.6169 27.2115 20.4165C27.2015 20.6139 27.1815 20.8112 27.1815 21.0085C27.2332 23.1544 27.9055 25.241 29.1191 27.0224C30.3328 28.8038 32.0373 30.2057 34.0318 31.063C36.0262 31.9203 38.2274 32.1972 40.3761 31.8611C42.5248 31.525 44.5313 30.5899 46.1591 29.166C47.787 27.742 48.9684 25.8887 49.5641 23.8242C50.1599 21.7598 50.1451 19.5704 49.5215 17.514C48.8979 15.4576 47.6915 13.6199 46.0445 12.2176C44.3975 10.8152 42.3785 9.90659 40.2255 9.59881Z" fill="#03A6A6" />
                                        </svg>
                                        <p class="mil-text-m mil-mb-30 mil-up">The detailed notification history in the App gives me a complete view of my financial activity. It's like having a personal security assistant always.</p>
                                        <div class="mil-customer">
                                            <img src="img/faces/3.jpg" alt="Customer" class="mil-up">
                                            <h6 class="mil-up">Karl Andreassen</h6>
                                        </div>
                                    </blockquote>
                                </div>
                                <div class="swiper-slide">
                                    <blockquote class="mil-with-bg">
                                        <svg width="50" height="32" viewBox="0 0 50 32" fill="none" xmlns="http://www.w3.org/2000/svg" class="mil-mb-30 mil-up mil-accent">
                                        <path d="M13.0425 9.59881C13.734 7.27646 15.0099 5.16456 16.7515 3.45982C17.0962 3.11455 17.2958 2.65336 17.31 2.16891C17.3243 1.68445 17.1523 1.2126 16.8285 0.848135L16.6225 0.619235C16.3552 0.313531 15.9908 0.106228 15.5887 0.0311485C15.1866 -0.0439312 14.7706 0.0176452 14.4085 0.205827C-0.299477 8.01918 -0.116489 18.6169 0.0295105 20.4165C0.0195105 20.6139 -0.000488281 20.8112 -0.000488281 21.0085C0.0518962 23.1543 0.724816 25.2405 1.93898 27.0214C3.15314 28.8023 4.85796 30.2037 6.85252 31.0604C8.84709 31.9171 11.0483 32.1935 13.1967 31.8569C15.3452 31.5203 17.3514 30.5848 18.9788 29.1606C20.6063 27.7364 21.7873 25.8829 22.3826 23.8185C22.9779 21.7541 22.9627 19.5648 22.3389 17.5086C21.715 15.4524 20.5085 13.615 18.8614 12.2129C17.2144 10.8108 15.1954 9.90246 13.0425 9.59487V9.59881Z" fill="#03A6A6" />
                                        <path d="M40.2255 9.59881C40.9171 7.27648 42.193 5.16459 43.9345 3.45982C44.2793 3.11455 44.4788 2.65336 44.4931 2.16891C44.5074 1.68445 44.3353 1.2126 44.0115 0.848135L43.8055 0.619235C43.5382 0.313531 43.1738 0.106228 42.7717 0.0311485C42.3696 -0.0439312 41.9536 0.0176452 41.5915 0.205827C26.8835 8.01918 27.0665 18.6169 27.2115 20.4165C27.2015 20.6139 27.1815 20.8112 27.1815 21.0085C27.2332 23.1544 27.9055 25.241 29.1191 27.0224C30.3328 28.8038 32.0373 30.2057 34.0318 31.063C36.0262 31.9203 38.2274 32.1972 40.3761 31.8611C42.5248 31.525 44.5313 30.5899 46.1591 29.166C47.787 27.742 48.9684 25.8887 49.5641 23.8242C50.1599 21.7598 50.1451 19.5704 49.5215 17.514C48.8979 15.4576 47.6915 13.6199 46.0445 12.2176C44.3975 10.8152 42.3785 9.90659 40.2255 9.59881Z" fill="#03A6A6" />
                                        </svg>
                                        <p class="mil-text-m mil-mb-30 mil-up">The detailed notification history in the App gives me a complete view of my financial activity. It's like having a personal security assistant always.</p>
                                        <div class="mil-customer">
                                            <img src="img/faces/2.jpg" alt="Customer" class="mil-up">
                                            <h6 class="mil-up">Bett Nilsen</h6>
                                        </div>
                                    </blockquote>
                                </div>
                            </div>
                        </div>
                        <div class="mil-testi-pagination mil-up"></div>
                    </div>
                </div>
                <!-- testimonials end -->

                <!-- call to action -->
                <div class="mil-cta mil-up">
                    <div class="container">
                        <div class="mil-out-frame mil-visible mil-image mil-illustration-fix mil-p-160-0">
                            <div class="row align-items-end">
                                <div class="mil-text-center">
                                    <h2 class="mil-mb-30 mil-light mil-up">Buy with Confidence, Guaranteed <br>Protection for your purchases</h2>
                                    <p class="mil-text-m mil-dark-soft mil-mb-60 mil-up">Discover how we make each purchase a safe and reliable <br>experience for you.</p>
                                    <div class="mil-up mil-mb-60"><a href="#." class="mil-btn mil-button-transform mil-md mil-add-arrow">Protect My Purchases</a></div>
                                </div>
                            </div>
                            <div class="mil-illustration-absolute mil-type-2 mil-up">
                                <img src="img/home-2/6.png" alt="illustration">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- call to action end -->

                <!-- footer -->
                <footer class="mil-footer-with-bg mil-p-160-0">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-3">
                                <a href="#." class="mil-footer-logo mil-mb-60">
                                    <img src="img/logo-2.png" alt="Plax" width="28" height="32">
                                </a>
                            </div>
                            <div class="col-xl-3 mil-mb-60">
                                <h6 class="mil-mb-60">Usefull Links</h6>
                                <ul class="mil-footer-list">
                                    <li class="mil-text-m mil-soft mil-mb-15">
                                        <a href="index.jsp">Home</a>
                                    </li>
                                    <li class="mil-text-m mil-soft mil-mb-15">
                                        <a href="about.jsp">About Us</a>
                                    </li>
                                    <li class="mil-text-m mil-soft mil-mb-15">
                                        <a href="contact.jsp">Contact Us</a>
                                    </li>
                                    <li class="mil-text-m mil-soft mil-mb-15">
                                        <a href="services.jsp">Services</a>
                                    </li>
                                    <li class="mil-text-m mil-soft mil-mb-15">
                                        <a href="price.jsp">Pricing</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-xl-3 mil-mb-60">
                                <h6 class="mil-mb-60">Help</h6>
                                <ul class="mil-footer-list">
                                    <li class="mil-text-m mil-soft mil-mb-15">
                                        999 Rue du Cherche-Midi, 7755500666 Paris, <br>France
                                    </li>
                                    <li class="mil-text-m mil-soft mil-mb-15">
                                        +001 (808) 555-0111
                                    </li>
                                    <li class="mil-text-m mil-soft mil-mb-15">
                                        support@plax.network
                                    </li>
                                </ul>
                            </div>
                            <div class="col-xl-3 mil-mb-80">
                                <h6 class="mil-mb-60">Newsletter</h6>
                                <p class="mil-text-xs mil-soft mil-mb-15">Subscribe to get the latest news form us</p>
                                <form class="mil-subscripe-form-footer">
                                    <input class="mil-input" type="email" placeholder="Email">
                                    <button type="submit"><i class="far fa-envelope-open mil-dark"></i></button>
                                    <div class="mil-checkbox-frame mil-mt-15">
                                        <div class="mil-checkbox">
                                            <input type="checkbox" id="checkbox" checked>
                                            <label for="checkbox"></label>
                                        </div>
                                        <p class="mil-text-xs mil-soft">Subscribe to get the latest news</p>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="mil-footer-bottom">
                            <div class="row">
                                <div class="col-xl-6">
                                    <p class="mil-text-s mil-soft">© 2024 Plax Finance & Fintech Design</p>
                                </div>
                                <div class="col-xl-6">
                                    <p class="mil-text-s mil-text-right mil-sm-text-left mil-soft">Developed by <a href="https://bslthemes.com" target="blank">bslthemes</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- footer end -->

            </div>
            <!-- content end -->
        </div>
        <!-- wrapper end -->

        <!-- jquery js -->
        <script src="js/plugins/jquery.min.js"></script>

        <!-- swiper css -->
        <script src="js/plugins/swiper.min.js"></script>
        <!-- gsap js -->
        <script src="js/plugins/gsap.min.js"></script>
        <!-- scroll smoother -->
        <script src="js/plugins/ScrollSmoother.min.js"></script>
        <!-- scroll trigger js -->
        <script src="js/plugins/ScrollTrigger.min.js"></script>
        <!-- scroll to js -->
        <script src="js/plugins/ScrollTo.min.js"></script>
        <!-- magnific -->
        <script src="js/plugins/magnific-popup.js"></script>
        <!-- plax js -->
        <script src="js/main.js"></script>

    </body>
</html>
