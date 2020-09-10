<%-- 
    Document   : shopping-cart
    Created on : Jul 12, 2020, 10:12:26 AM
    Author     : Saiful
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
    <!--<![endif]-->


    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Shopping Cart | LookCare</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Fav icon -->
        <link rel="shortcut icon" href="img/favicon.ico">

        <link href='https://fonts.googleapis.com/css?family=Lato:400,400italic,900,700,700italic,300' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700,600' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Ubuntu:400,300,500,700' rel='stylesheet' type='text/css'>
        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/skin-lblue.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="css/responsive.css">
        <script src="js/vendor/modernizr-2.6.2.min.js"></script>
        <script>

            function setcolor(id, color) {



                $.ajax({
                    type: "Post",
                    url: 'setcolor',
                    data: {id: id, color: color},
                    dataType: "json",
                    success: function (data) {
//                                                                                console.log('my message AAAAAAAAA' + data2);
//                                                                                window.prompt(data2);
                        alert(data);
                    }
                });

            }


            function setsize(id, size) {



                $.ajax({
                    type: "Post",
                    url: 'setsize',
                    data: {id: id, size: size},
                    dataType: "json",
                    success: function (data2) {
//                                                                                console.log('my message AAAAAAAAA' + data2);
//                                                                                window.prompt(data2);
                        alert(data2);
                    }
                });

            }




        </script>
    </head>

    <body>
        <!--[if lt IE 7]>
        <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->


        <!-- Start Loading -->
        <section class="loading-overlay">
            <div class="Loading-Page">
                <h1 class="loader">Loading...</h1>
            </div>
        </section>
        <!-- End Loading  -->

        <!-- start header -->
          <%@ include file='./headers/nheader.jsp'%>

        <!-- end header -->

        <!-- start main content -->
        <main class="main-container">
            <!-- shopping cart content -->
            <section class="shopping-cart-area">
                <!-- Begin cart -->
                <div class="ld-subpage-content">

                    <div class="ld-cart">

                        <!-- Begin cart section -->
                        <section class="ld-cart-section ptb-50">

                            <div class="container">

                                <div class="row">

                                    <div class="col-md-12">


                                        <%--<form:form method="POST" action="" modelAttribute="employee">--%>















                                        <!-- Begin table -->
                                        <table class="table cart-table">
                                            <thead>
                                                <tr>
                                                    <th class="table-title">Product Name</th>
                                                    <th class="table-title">Product Code</th>
                                                    <th class="table-title">Unit Price</th>
                                                    <th class="table-title">Quantity</th>
                                                    <th class="table-title">SubTotal</th>
                                                    <th>

                                                        <span class="close-button disabled"></span></th>
                                                </tr>
                                            </thead>


                                            <tbody>

                                                <c:forEach var="cart" items="${cartlist}" varStatus="status">                                              
                                                    <tr>
                                                        <td class="product-name-col">
                                                            <figure>
                                                                <a href="#"><img class="img-responsive"  src="img/fimg1000/${cart.image}" alt="White linen sheer dress"></a>
                                                            </figure>
                                                            <h2 class="product-name"><a href="#">${cart.product_name}</a></h2>

                                                            <ul>
                                                                <li>Color:

                                                                    <select id="color${cart.id}" name="color" onchange="setcolor(${cart.id}, $(this).val())" class="selectbox">

                                                                        <option value="${cart.color}">select</option>
                                                                        <option value="Red">Red</option>

                                                                        <option value="Green">Green</option>

                                                                        <option value="Black">Black</option>

                                                                    </select></li>

                                                                <li>Size: <select id="size${cart.id}" name="size" onchange="setsize(${cart.id}, $(this).val())"  class="selectbox">

                                                                        <option value="${cart.size}">  select</option>
                                                                        <option value="SM">SM</option>

                                                                        <option value="L">L</option>

                                                                        <option value="M">M</option>
                                                                        <option value="XL">XL</option>
                                                                    </select></li>
                                                            </ul>
                                                        </td>
                                                        <td class="product-code">${cart.p_id}</td>
                                                        <td class="product-price-col">
                                                            <span class="product-price-special">${cart.new_price}</span>
                                                        </td>
                                                        <td>
                                                            <div class="custom-quantity-input">
                                                                <input type="number" name="quantity" id="quantity_${cart.id}" value="${cart.quntity}" oninput="myFunction(${cart.id},${cart.new_price});total();setquantity(${cart.id});return false"/>
                                                            </div>
                                                        </td>
                                                        <td class="product-total-col">
                                                            <span class="product-price-special" id="subtotal_${cart.id}"></span>
                                                        </td>
                                                        <td>
                                                            <a href="deleteCart?id=<c:out value='${cart.id}'/>" class="close-button"><i class="fa fa-times"></i></a>
                                                        </td>
                                                    </tr>
                                                </c:forEach> 
                                            <script>

                                                function setquantity(id) {

                                                    var y=document.getElementById("quantity_" + id).value;

                                                    $.ajax({
                                                        type: "Post",
                                                        url: 'setqua',
                                                        data: {id: id, qua: y},
                                                        dataType: "json",
                                                        success: function (data2) {
//                                                                                console.log('my message AAAAAAAAA' + data2);
//                                                                                window.prompt(data2);
                                                            alert(data2);
                                                        }
                                                    });

                                                }


                                            </script>

                                            <script>


                                                var ttt = [];
                                                function myFunction(id, price) {
                                                    var x = document.getElementById("quantity_" + id).value;

                                                    document.getElementById("subtotal_" + id).innerHTML = x * price;

                                                    ttt[id] = x * price;

//                                                    document.getElementById("total").value =ttt;
                                                }

                                                function total() {
                                                    var tax = 0.03;
                                                    var ship = 200;


                                                    var sum = ttt.reduce(function (a, b) {
                                                        return a + b;
                                                    }, 0);
                                                    var calcu = sum * tax;

                                                    var ntotal = ship + sum + calcu;
                                                    document.getElementById("tax").value = calcu;
                                                    console.log(sum);
                                                    document.getElementById("total").value = sum;
                                                    document.getElementById("ntotal").value = ntotal;
                                                }

//
//                                                $(document).ready(function () {
//                                                    total();
//                                                });

//                                                function gotoChackout(){
//                                                    
//                                                    window.location="orders.jsp"
//                                                }

                                            </script>

                                            </tbody>
                                        </table>
                                        <!-- End table -->

                                        <div class="mt-30"></div>

                                        <div class="row">


                                            <form action="add_order" method="post" name="orders"  class="clearfix">



                                                <div class="col-md-8">

                                                    <!-- Begin tab container -->
                                                    <div class="tab-container left clearfix">

                                                        <ul class="nav nav-tabs" role="tablist">

                                                            <li class="active"><a href="#shipping" data-toggle="tab">Shipping &amp; Taxes</a></li>
                                                            <li><a href="#discount" data-toggle="tab">Discount Code</a></li>
                                                            <li><a href="#gift" data-toggle="tab">Gift voucher</a></li>

                                                        </ul>


                                                        <!-- Begin tab content -->
                                                        <div class="tab-content">

                                                            <div class="tab-pane fade in active" id="shipping">








                                                                <p class="ship-desc">Enter your destination to get a shipping estimate</p>

                                                                <div class="ship-row clearfix">

                                                                    <span class="ship-label col-3">District<i>*</i></span>

                                                                    <div class="normal-selectbox lower col-3-2x country-select-box">
                                                                        <select id="district" name="district" class="selectbox">

                                                                            <option value="">Please select</option>

                                                                            <option value="Dhaka">Dhaka</option>

                                                                            <option value="Barishal">Barishal</option>

                                                                            <option value="Rajshahi">Rajshahi</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <!-- /.ship-row -->

                                                                <div class="ship-row clearfix">

                                                                    <span class="ship-label col-3">Region/State<i>*</i></span>

                                                                    <div class="normal-selectbox lower col-3-2x region-select-box">
                                                                        <select id="thana" name="thana" class="selectbox">

                                                                            <option value="">Please select</option>
                                                                            <option value="Mohammadpur">Mohammadpur</option>

                                                                            <option value="Badda">Badda</option>

                                                                            <option value="Mohakhali">Mohakhali</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                 <div class="ship-row clearfix">

                                                                    <span class="ship-label col-3">Address<i>*</i></span>

                                                                    <div class="normal-selectbox lower col-3-2x region-select-box">
                                                                        <div  class="selectbox">
                                                                        <input type="text" name="address" class="form-control  text-center" placeholder="Address">     
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- /.ship-row -->

                                                                <div id="post-code-ship-row" class="ship-row clearfix">

                                                                    <span class="ship-label col-3">Phone Number<i>*</i></span>

                                                                    <div class="col-3 ship-post">
                                                                        <input type="number" name="contact" class="form-control text-center" placeholder="017xxxxxxxx">
                                                                    </div>

                                                                    <div class="col-3 text-right">
                                                                        <input type="number" name="postcode" class="form-control text-center" placeholder="zip code number">
                                                                    </div>

                                                                </div>
                                                                <!-- /.ship-row -->



                                                            </div>
                                                            <!-- /.tab-pane -->

                                                            <div class="tab-pane fade" id="discount">

                                                                <p class="ship-desc">Enter your discount coupon here:</p>
                                                                <hr>

                                                                <div class="ship-row clearfix">

                                                                    <span class="ship-label col-3">Discount Code<i>*</i>
                                                                    </span>

                                                                    <div class="col-3-2x">
                                                                        <input type="text" class="form-control" placeholder="coupon here">
                                                                    </div>
                                                                </div>
                                                                <!-- /.ship-row -->

                                                                <div class="ship-row clearfix">

                                                                    <span class="ship-label col-3">Discount Code 2<i>*</i>
                                                                    </span>

                                                                    <div class="col-3-2x">
                                                                        <input type="text" class="form-control" placeholder="coupon here">
                                                                    </div>
                                                                </div>
                                                                <!-- /.ship-row -->

                                                                <div class="ship-row"><a href="#" class="btn btn-custom-5">Activate</a></div>
                                                            </div>
                                                            <!-- /.tab-pane -->

                                                            <div class="tab-pane fade" id="gift">

                                                                <p class="ship-desc">Enter your discount coupon here:</p>
                                                                <hr>

                                                                <div class="ship-row clearfix">

                                                                    <span class="ship-label col-3">Voucher Code<i>*</i></span>

                                                                    <div class="col-3-2x">
                                                                        <input type="text" class="form-control" placeholder="coupon here">
                                                                    </div>

                                                                </div>
                                                                <!-- /.ship-row -->

                                                                <div class="xs-margin"></div>

                                                                <p>This features aren't complete</p>

                                                            </div>
                                                            <!-- /.tab-pane -->
                                                        </div>
                                                        <!-- /.tab-content -->
                                                    </div>
                                                    <!-- /.tab-container -->
                                                    <div class="cell-view">Payment Methods:
                                                        <div class="payment-methods">

                                                            <a href="#"><img alt="" src="img/payment-method-1.png"></a>
                                                            <a href="#"><img alt="" src="img/payment-method-2.png"></a>
                                                            <a href="#"><img alt="" src="img/payment-method-3.png"></a>
                                                            <a href="#"><img alt="" src="img/payment-method-4.png"></a>
                                                            <a href="#"><img alt="" src="img/payment-method-5.png"></a>
                                                            <a href="#"><img alt="" src="img/payment-method-6.png"></a>
                                                            <a href="#"><img alt="" src="img/payment-method-7.png"></a>
                                                            <a href="#"><img alt="" src="img/payment-method-8.png"></a>
                                                        </div>
                                                    </div>


                                                    <div class="mt-30"></div>
                                                    <a href="index" class="btn btn-custom-6 btn-lger min-width-lg">Continue Shopping</a>
                                                </div>

                                                <div class="mt-30 visible-sm visible-xs clearfix"></div>

                                                <div class="col-md-4">

                                                    <!--<form action="#" class="clearfix">-->

                                                    <table class="table total-table">

                                                        <tbody>
                                                            <tr>
                                                                <td class="total-table-title">Subtotal:</td>
                                                                <td><input  id="total" name="subtotal" readonly/> </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="total-table-title">Shipping:</td>
                                                                <td><input id="shipment"  name="shipment" value="200" readonly/></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="total-table-title">TAX (3%):</td>
                                                                <td><input id="tax"  name="vat" readonly/> </td>
                                                            </tr>
                                                        </tbody>

                                                        <tfoot>
                                                            <tr>
                                                                <td class="total-table-title">>Total:</td>
                                                                <td><input id="ntotal"  name="total" readonly/></td>
                                                            </tr>
                                                        </tfoot>
                                                    </table>
                                                    <!-- End table -->

                                                    <div class="mt-30"></div>

                                                    <div class="text-right"><a href="#" class="btn btn-custom-6 btn-lger min-width-sm"><input type="submit" value="Checkout"></a>
                                                    </div>

                                                </div>
                                            </form>
                                            <!-- /.col-md-4 -->
                                        </div>


                                        <!-- /.row -->
                                    </div>
                                </div>
                            </div>

                        </section>
                        <!-- /.ld-cart-section -->

                    </div>
                    <!-- /.ld-cart -->
                </div>
                <!-- /.ld-subpage-content -->
                <!-- End Cart -->
            </section>
            <!-- end shopping cart content -->

        </main>

        <!-- start footer area -->
        <%@ include file='./headers/nheader.jsp'%>

        <!-- footer area end -->


        <!-- All Script -->
        <script src="js/vendor/jquery-1.10.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/smoothscroll.js"></script>
        <!-- Scroll up js
        ============================================ -->
        <script src="js/jquery.scrollUp.js"></script>
        <script src="js/menu.js"></script>

        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
    </body>


</html>