<%-- 
    Document   : nhead
    Created on : Aug 5, 2020, 9:43:48 PM
    Author     : Saiful
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
       
            <!-- Top bar starts -->
            <div class="top-bar">
                <div class="container">

                    <!-- Contact starts -->
                    <div class="tb-contact pull-left">
                        <!-- Email -->
                        <i class="fa fa-envelope color"></i> &nbsp; <a href="mailto:gmsifulalam93@gmail.com">gmsifulalam93@gmail.com</a>
                        &nbsp;&nbsp;
                        <!-- Phone -->
                        <i class="fa fa-phone color"></i> &nbsp; +880 1712922516
                    </div>
                    <!-- Contact ends -->                  

                    <div class="tb-language dropdown pull-right">
                        <a href="#" data-toggle="dropdown"  class="btn btn-white btn-xs b-dropdown"><i class="fa fa-sign-in"></i>  <span class="badge badge-color">Login</span><i class="fa fa-angle-down color"></i></a>
                        <ul class="dropdown-menu dropdown-mini" role="menu">
                            <li><a href="signin">Sign-In</a></li>
                            <li><a href="signup">Sign-Up</a></li>
                        </ul>
                    </div>






                    <!-- Shopping kart starts -->
                    <div class="tb-shopping-cart pull-right">
                        <!-- Link with badge -->
                        <a href="#" class="btn btn-white btn-xs b-dropdown"><i class="fa fa-shopping-cart"></i> <i class="fa fa-angle-down color"></i> <span class="badge badge-color">2</span></a>
                        <!-- Dropdown content with item details -->
                        <div class="b-dropdown-block">
                            <!-- Heading -->
                            <h4><i class="fa fa-shopping-cart color"></i> Your Items</h4>

                            <!-- ************forEach function start************** -->
                            <ul>
                                <c:forEach var="cart" items="${cartlist}">
                                    <li>
                                        <!-- Item image -->
                                        <div class="cart-img">

                                            <a href="#"><img src="img/ecommerce/view-cart/${cart.productname}.png" alt="" class="img-responsive" /></a>
                                        </div>
                                        <!-- Item heading and price -->  
                                        <div class="cart-title">
                                            <h5><a href="#">${cart.productcode}</a></h5>
                                            <!-- Item price -->
                                            <span class="label label-color label-sm">"${cart.subtotalprice}"</span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </li>
                                </c:forEach>
                            </ul>
                            <a href="#" class="btn btn-white btn-sm">View Cart</a> &nbsp; <a href="#" class="btn btn-color btn-sm">Checkout</a>
                        </div>
                    </div>

                    <!-- ************forEach function End************** -->

                    <!-- Shopping kart ends -->

                    <!-- Langauge starts -->
                    <div class="tb-language dropdown pull-right">
                        <a href="#" data-target="#" data-toggle="dropdown"><i class="fa fa-globe"></i> English USA <i class="fa fa-angle-down color"></i></a>
                        <!-- Dropdown menu with languages -->
                        <ul class="dropdown-menu dropdown-mini" role="menu">
                            <li><a href="#">বাংলা</a></li>
                            <li><a href="#">Englishggggg</a></li>                        
                        </ul>
                    </div>





                    <!-- Language ends -->

                    <!-- Search section for responsive design -->
                    <div class="tb-search pull-left">
                        <a href="#" class="b-dropdown"><i class="fa fa-search square-2 rounded-1 bg-color white"></i></a>
                        <div class="b-dropdown-block">
                            <form>
                                <!-- Input Group -->
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Type Something">
                                    <span class="input-group-btn">
                                        <button class="btn btn-color" type="button">Search</button>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- Search section ends -->

                    <!-- Social media starts -->
                    <div class="tb-social pull-right">
                        <div class="brand-bg text-right">
                            <!-- Brand Icons -->
                            <a href="#" class="facebook"><i class="fa fa-facebook square-2 rounded-1"></i></a>
                            <a href="#" class="twitter"><i class="fa fa-twitter square-2 rounded-1"></i></a>
                            <a href="#" class="google-plus"><i class="fa fa-google-plus square-2 rounded-1"></i></a>
                        </div>
                    </div>
                    <!-- Social media ends -->

                    <div class="clearfix"></div>
                </div>
            </div>

            <!-- Top bar ends -->

            <!-- Header One Starts -->
            <div class="header-1">

                <!-- Container -->
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-4">
                            <!-- Logo section -->
                            <div class="logo">
                                <h1><a href="index"><i class="fa fa-bookmark-o"></i> LookCare</a></h1>
                            </div>
                        </div>
                        <div class="col-md-6 col-md-offset-2 col-sm-5 col-sm-offset-3 hidden-xs">
                            <!-- Search Form -->
                            <div class="header-search">
                                <form>
                                    <!-- Input Group -->
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Type Something">
                                        <span class="input-group-btn">
                                            <button class="btn btn-color" type="button">Search</button>
                                        </span>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Navigation starts -->

                <div class="navi">
                    <div class="container ">
                        <div class="navy sticky-top">
                            <ul>
                                <!-- Main menu -->
                                <li><a href="index">Home</a>
                                    <!-- Submenu -->
                                    <!--                                    <ul>
                                    
                                                                            <li><a href="index">Home 1</a></li>
                                                                            <li><a href="index-2"><span>Home 2</span></a></li>
                                                                            <li><a href="index-3"><span>Home 3</span></a></li>
                                    
                                                                        </ul>-->
                                </li>

                                <li><a href="#">Category</a>
                                    <ul>
                                        <li><a href="#">Laptop</a>
                                            <ul>
                                                <li><a href="indexd">Vaio</a></li>
                                                <li><a href="#">Samsung</a></li>
                                                <li><a href="#">Toshiba</a></li>
                                                <li><a href="#">HP</a></li>

                                            </ul>
                                        </li>
                                        <li><a href="#">Smartphone</a>
                                            <ul>
                                                <li><a href="#">Iphone</a></li>
                                                <li><a href="#">Oppo</a></li>
                                                <li><a href="#">Nokia</a></li>
                                                <li><a href="#">Sony</a></li>
                                                <li><a href="#">Samsung</a></li>

                                            </ul>
                                        </li>
                                        <li><a href="#">Accessories</a>
                                            <ul>
                                                <li><a href="#">Headphone</a></li>
                                                <li><a href="#">Adapter</a></li>
                                                <li><a href="#">Bag</a></li>
                                                <li><a href="#">Baby doll</a></li>

                                            </ul>
                                        </li>
                                        <!-- Multi level menu -->
                                        <li><a href="#">Multi Level Menu</a>
                                            <ul>
                                                <!-- Sub menu -->
                                                <li><a href="#">Menu #1</a></li>
                                                <li><a href="#">Menu #1</a></li>
                                                <li><a href="#">Menu #1</a>
                                                    <ul>
                                                        <!-- Sub menu -->
                                                        <li><a href="#">Menu #2</a></li>
                                                        <li><a href="#">Menu #2</a></li>
                                                        <li><a href="#">Menu #2</a>
                                                            <ul>
                                                                <!-- Sub menu -->
                                                                <li><a href="#">Menu #3</a></li>
                                                                <li><a href="#">Menu #3</a></li>
                                                                <li><a href="#">Menu #3</a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="#">Offers</a>
                                    <ul>
                                        <li><a href="#">Footer</a>
                                            <ul>
                                                <li><a href="footer-one">Footer1</a></li>
                                                <li><a href="footer-two">Footer2</a></li>
                                                <li><a href="footer-three">Footer3</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Price Table</a>
                                            <ul>
                                                <li><a href="price-table-one">Price Table1</a></li>
                                                <li><a href="price-table-two">Price Table2</a></li>

                                            </ul>
                                        </li>

                                    </ul>
                                </li>


                                <li><a href="#">Blog</a>
                                    <ul>
                                        <li><a href="blog"><span>Blog Default</span></a></li>
                                        <li><a href="blog-masonry"><span>Blog Masonry</span></a></li>
                                        <li><a href="blog-full-width"><span>Blog Full Width</span></a></li>
                                        <li><a href="single-post"><span>Single Page 1</span></a></li>
                                        <li><a href="single-post-v2"><span>Single Page 2</span></a></li>
                                    </ul>
                                </li>

                                <li><a href="#">Pages</a>
                                    <ul>
                                        <li><a href="shop"><span>Shop</span></a></li>
                                        <li><a href="single-product"><span>Single product</span></a></li>
                                        <li><a href="shopping-cart"><span>Cart</span></a></li>
                                        <li><a href="checkout"><span>Checkout</span></a></li>
                                        <li><a href="wishlist"><span>Wishlist</span></a></li>
                                        <li><a href="signin"><span>Sign In</span></a></li>
                                        <li><a href="signup"><span>Sign Up</span></a></li>
                                        <li><a href="404"><span>404 Page</span></a></li>
                                    </ul>
                                </li>

                                <li><a href="about">About Us</a></li>
                                <li><a href="contact">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Navigation ends -->

            </div>

            <!-- Header one ends -->

       