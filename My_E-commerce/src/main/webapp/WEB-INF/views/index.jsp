<%-- 
    Document   : index
    Created on : Jul 12, 2020, 1:12:05 AM
    Author     : Saiful
--%>

<%@page import="com.shop.model.Users"%>
<%@page import="com.shop.model.Cart"%>
<%@page import="com.shop.service.Service"%>
<%@page import="com.shop.model.Products"%>
<%@page import="org.springframework.ui.ModelMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" >
    <!--<![endif]-->

    <head>
        <title> eSellBazzer</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Fav icon -->
        <link rel="shortcut icon" href="img/favicon75.png">

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

        <script src="js/vendor/jquery-1.10.2.min.js"></script>

        <script src="js/vendor/modernizr-2.6.2.min.js"></script>
        <script>
//            function addtocart11(idp) {
//
//             console.log("started ");
//
//                $.ajax({
//                    type: "Post",
//                    url: 'addajax',
//                    data: {id: idp},
//                    dataType: "json",
//                    success: function(result) {
////                        console.log('my message AAAAAAAAA' + data2);
////                        window.prompt(data2);
////                        $('#id_$ {pd.id}').val("Already added");
//                     console.log("Success work");
//                        alert(result);
//                    }
//                });
//
//            }

        </script>
        
        <script>
             function addtocart11(idp) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      console.log(this.responseText);
       alert(this.responseText);
    }
  };
  xhttp.open("POST", "addajax?id="+idp, true);
  xhttp.send();
}
            
        </script>
        <style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.top-container {
  background-color: #f1f1f1;
  padding: 30px;
  text-align: center;
}

.header {
  padding: 10px 16px;
  background: #555;
  color: #f1f1f1;
}

.content {
  padding: 16px;
}

.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

.sticky + .content {
  padding-top: 102px;
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
        <header>
            <%--<c:if test="${emp == 20}">--%>  
            <%--<c:out value="<%@ include file='./headers/aheader.jsp'%>"/>--%> 
            <%--</c:if>--%> 
            <%--<c:if test="${emp== 30}">--%>  
            <%--<c:out value="<%@ include file='./headers/nheader.jsp'%>"/>--%>
            <%--</c:if>--%>


            <%--<c:out value='${pd.productcode}'/>--%>
  <%@ include file='./headers/nheader.jsp'%>

        </header>
  <nav>
      
      
      
      
  </nav>
  
  <section class="sec1">  
  
   
            <%@ include file='./headers/body.jsp'%>
        <!--end header -->
</section>  
        <!-- start main content -->
     
        <!-- end main content -->

        <!-- footer area end -->
<section class="sec2">  
        <%@ include file='./headers/footer.jsp'%>
        <!-- footer area end -->

</section>
        <!-- All script -->

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



        <script type="text/javascript">

            /*-----------------------------------------------------------------------------------*/
            /* Product Carousel
             /*-----------------------------------------------------------------------------------*/
            if (jQuery().owlCarousel) {
                var productCarousel = $("#product-carousel");
                productCarousel.owlCarousel({
                    loop: true,
                    dots: false,
                    responsive: {
                        0: {
                            items: 1
                        },
                        480: {
                            items: 2
                        },
                        900: {
                            items: 3
                        },
                        1100: {
                            items: 4
                        }
                    }
                });

                // Custom Navigation Events
                $(".product-control-nav .next").on("click", function () {
                    productCarousel.trigger('next.owl.carousel');
                });

                $(".product-control-nav .prev").on("click", function () {
                    productCarousel.trigger('prev.owl.carousel');
                });
            }

            /* Main Slider */
            $('.tp-banner0').show().revolution({
                dottedOverlay: "none",
                delay: 5000,
                startWithSlide: 0,
                startwidth: 869,
                startheight: 520,
                hideThumbs: 10,
                hideTimerBar: "on",
                thumbWidth: 50,
                thumbHeight: 50,
                thumbAmount: 4,
                navigationType: "bullet",
                navigationArrows: "solo",
                navigationStyle: "round",
                touchenabled: "on",
                onHoverStop: "on",
                swipe_velocity: 0.7,
                swipe_min_touches: 1,
                swipe_max_touches: 1,
                drag_block_vertical: false,
                parallax: "mouse",
                parallaxBgFreeze: "on",
                parallaxLevels: [7, 4, 3, 2, 5, 4, 3, 2, 1, 0],
                keyboardNavigation: "off",
                navigationHAlign: "right",
                navigationVAlign: "bottom",
                navigationHOffset: 30,
                navigationVOffset: 30,
                soloArrowLeftHalign: "left",
                soloArrowLeftValign: "center",
                soloArrowLeftHOffset: 50,
                soloArrowLeftVOffset: 8,
                soloArrowRightHalign: "right",
                soloArrowRightValign: "center",
                soloArrowRightHOffset: 50,
                soloArrowRightVOffset: 8,
                shadow: 0,
                fullWidth: "on",
                fullScreen: "off",
                spinner: "spinner4",
                stopLoop: "on",
                stopAfterLoops: -1,
                stopAtSlide: -1,
                shuffle: "off",
                autoHeight: "off",
                forceFullWidth: "off",
                hideThumbsOnMobile: "off",
                hideNavDelayOnMobile: 1500,
                hideBulletsOnMobile: "off",
                hideArrowsOnMobile: "off",
                hideThumbsUnderResolution: 0,
                hideSliderAtLimit: 0,
                hideCaptionAtLimit: 500,
                hideAllCaptionAtLilmit: 500,
                videoJsPath: "rs-plugin/videojs/",
                fullScreenOffsetContainer: ""
            });



        </script>
<!--
<script>
window.onscroll = function() {myFunction()};

var header = document.getElementById(" myHeader");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) { 
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}
</script>-->
    </body>


</html>