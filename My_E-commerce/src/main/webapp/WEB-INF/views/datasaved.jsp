<%-- 
    Document   : index
    Created on : Jul 12, 2020, 1:12:05 AM
    Author     : Saiful
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" >
    <!--<![endif]-->

    <head>
        <title>Home page | LookCare</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Fav icon -->
        <link rel="shortcut icon" href="img/favicon.ico">

        <!-- Font -->
        <link href='https://fonts.googleapis.com/css?family=Lato:400,400italic,900,700,700italic,300' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700%7CDancing+Script%7CMontserrat:400,700%7CMerriweather:400,300italic%7CLato:400,700,900' rel='stylesheet' type='text/css' />
        <link href='http://fonts.googleapis.com/css?family=Cantata+One' rel='stylesheet' type='text/css' />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700,600' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Ubuntu:400,300,500,700' rel='stylesheet' type='text/css'>
        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- Magnific Popup -->
        <link href="css/magnific-popup.css" rel="stylesheet">

        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/skin-lblue.css">

        <link rel="stylesheet" href="css/ecommerce.css">

        <!-- Owl carousel -->
        <link href="css/owl.carousel.css" rel="stylesheet">

        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="css/responsive.css">
        <link rel="stylesheet" type="text/css" href="css/revolutionslider_settings.css" media="screen" />

        <script src="js/vendor/modernizr-2.6.2.min.js"></script>
        <style>   
            table {
                border-collapse: collapse;
                width: 100%;
            }
            th, td {
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even){background-color: #f2f2f2}
            th {
                background-color: #4CAF50;
                color: white;
            }
        </style>
    </head>

    <body class="style-14">
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
        <header >
            <%--<c:if test="${emp == 20}">--%>  
            <%--<c:out value="<%@ include file='./headers/aheader.jsp'%>"/>--%> 
            <%--</c:if>--%> 
            <%--<c:if test="${emp== 30}">--%>  
                <%--<c:out value="<%@ include file='./headers/nheader.jsp'%>"/>--%>
            <%--</c:if>--%>


            <%@ include file='./headers/nheader.jsp'%>
            <%--<c:out value='${pd.productcode}'/>--%>

            <h1>Ordered Table</h1>


                   <table border="2" width="70%" cellpadding="2">  
                    <tr>
                        <th>Id</th>
                        <th>Customer Id</th>
                        <th>Subtotal Tk</th>
                        <th>Vat(3%)</th>
                         <th>Shipment Cost</th>
                        <th>Total Tk</th>
                        <th>Shipment Address</th>
                        <th>Mobil no</th>
                        <th>Status</th>
                        <th>Purchase Date</th>
                        <th>Purchase Time</th>
                        
                    </tr>  
                            <c:forEach var="abc" items="${ordertlist}">   
                        <tr>  

                            <td>${abc.id}</td> 
                            <td>${abc.coustomerId}</td> 
                            <td>${abc.subtotal}</td> 
                            <td>${abc.vat}</td> 
                            <td>${abc.shipment}</td> 
                            <td>${abc.total}</td> 
                            <td>District:${abc.district},<br/>
                                Thana :${abc.thana},<br/>
                                Post Code:${abc.postcode},<br/>
                                Ditails:${abc.address}</td> 
                            <td>${abc.contact}</td> 
                            <td>${abc.status}</td> 
                            <td>${abc.date}</td> 
                            <td>${abc.time}</td> 
                            
                       
                        </tr>  
                    </c:forEach>  
                </table> 
                <br/>
                

        </header>
       

       <%@ include file='./headers/footer.jsp'%>
      


        <!-- All script -->
        <script src="js/vendor/jquery-1.10.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/smoothscroll.js"></script>
        <!-- Scroll up js
        ============================================ -->
        <script src="js/jquery.scrollUp.js"></script>
        <script src="js/menu.js"></script>
        <!-- new collection section script -->
        <script src="js/swiper/idangerous.swiper.min.js"></script>
        <script src="js/swiper/swiper.custom.js"></script>

        <!-- Magnific Popup -->
        <script src="js/jquery.magnific-popup.min.js"></script>

        <script src="js/jquery.countdown.min.js"></script>

        <!-- SLIDER REVOLUTION SCRIPTS  -->
        <script type="text/javascript" src="rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
        <script type="text/javascript" src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
        <!-- Owl carousel -->
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>

    </body>


</html>