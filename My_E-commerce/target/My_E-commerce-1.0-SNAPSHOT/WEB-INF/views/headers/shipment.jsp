<%-- 
    Document   : shipment
    Created on : Aug 11, 2020, 9:00:33 PM
    Author     : Saiful
--%>

<%@page import="com.shop.model.Orders"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    </head>

    <body>
        <div class="tab-container left clearfix">






            <!-- Begin tab content -->


            <div class="tab-pane fade in active" id="shipping">




      

                <form action="add_order" method="post" name="shipment"  class="clearfix">

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
                    <!-- /.ship-row -->

                    <div id="post-code-ship-row" class="ship-row clearfix">

                        <span class="ship-label col-3">Post Codes<i>*</i></span>

                        <div class="col-3 ship-post">
                            <input id="postcode" name="postcode" type="number" class="form-control text-center" placeholder="12345">
                        </div>

                    </div>
                    <!-- /.ship-row -->
                    <div id="ditail-ship-row" class="ship-row clearfix">

                        <span class="ship-label col-3">Address:<i>*</i></span>

                        <div class="col-3 ship-post">
                            <input type="text" id="ditail" name="ditail" class="form-control text-center" placeholder="Home Address">
                        </div>

                      

                    </div>


                </form>

  <div class="col-3 text-right">
                            <a href="#" class="get-quotes btn btn-custom-6 btn-block"><input type="submit" value="Save"></a>
                        </div>

                <%
                    Orders order = new Orders();


                %>



            </div>
            <!-- /.tab-pane -->

            <!-- /.tab-pane -->


            <!-- /.tab-pane -->

            <!-- /.tab-content -->
        </div>
    </body>
</html>