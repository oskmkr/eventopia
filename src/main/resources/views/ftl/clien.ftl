<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<#-- ===========================
THEME INFO
=========================== -->
    <meta name="description"
          content="A free Bootstrap powerd HTML template exclusively crafted for the super lazy designers like me who designed thousand of websites till today but never got a chance to build one himself.">
    <meta name="keywords"
          content="Free Portfolio Template, Free Template, Free Bootstrap Template, Dribbble Portfolio Template, Free HTML5 Template">
    <meta name="author" content="EvenFly Team">

<#-- DEVEOPER'S NOTE:
This is a free Bootstrap powered HTML template from EvenFly. Feel free to download, modify and use it for yourself or your clients as long there is no money involved.

Please don't try to sale it from anywhere; because I want it to be free, forever. If you sale it, That's me who deserves the money, not you :)
-->

<#-- ===========================
SITE TITLE
=========================== -->
    <title>꿀 소식</title><#-- This is what you see on your browser tab-->

<#-- ===========================
FAVICONS
=========================== -->
    <link rel="icon" href="img/favicon.png">
    <link rel="apple-touch-icon" sizes="144x144" href="img/apple-touch-icon-ipad-retina.png"/>
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-iphone-retina.png"/>
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-ipad.png"/>
    <link rel="apple-touch-icon" sizes="57x57" href="img/apple-touch-icon-iphone.png"/>

<#-- ===========================
STYLESHEETS
=========================== -->
<#--
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
-->
    <link rel="stylesheet" href="/webjars/bootstrap/3.3.6/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/preloader.css">

    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/bootstrap-material-design.css">
    <link rel="stylesheet" href="css/style.css">

<#-- ===========================
ICONS:
=========================== -->
    <link rel="stylesheet" href="css/simple-line-icons.css">

<#-- ===========================
GOOGLE FONTS
=========================== -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Antic|Raleway:300">

<#-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<#-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<#-- ===========================
 GOOGLE ANALYTICS (Optional)
 =========================== -->

<#--Replace this line with your analytics code-->

<#-- Analytics end-->

</head>
<body data-spy="scroll">

<#-- SECTION SEPARETOR LINE -->
<#-- ===========================
TESTIMONIAL SECTION START
=========================== -->

<div id="clien" class="container">
    <div class="sectionhead animated bounceInUp" style="-webkit-animation-duration:2s">
        <span class="bigicon icon-bubbles"></span>
        <h3>Clien 알뜰 게시판</h3>
        <h5>최신 클리앙 알뜰 게시판</h5>
        <hr class="separetor">
    </div><#-- TESTIMONIAL SECTIONHEAD END -->

    <div class="row col-md-4">

    <#list clienEventList as clienEvent>

        <div class="panel panel-default animated " style="-webkit-animation-duration:1s">
            <a class="black-link" href="${clienEvent.link}">
                <div class="panel-body latest-item">
                    <div class="clientsphoto">
                        <img src="img/honey_128.png" alt="">
                    </div>
                    <div class="quote">
                        <div>${clienEvent.category} ${clienEvent.title}</div>
                        <h5>${clienEvent.writeDate}</h5>
                    </div>
                </div>
            </a>
        </div>

    </#list>

    </div>
</div>


<#-- ===========================
FOOTER START
=========================== -->
<footer>
    <div class="container">
        <span class="bigicon icon-like"></span>
        <div class="footerlinks"></div>

        <div class="copyright"><#-- FOOTER COPYRIGHT START -->
            <p>Copyrightⓒ. 2016 oskmkr All Rights Reserved.</p>
        </div><#-- FOOTER COPYRIGHT END -->

    </div>
</footer><#-- FOOTER END -->

<#-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<#--
<script src="//code.jquery.com/jquery-latest.min.js"></script>
-->
<script src="/webjars/jquery/2.2.2/dist/jquery.js"></script>
<#-- Include all compiled plugins (below), or include individual files as needed -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<#--Other necessary scripts-->
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/jquery.jribbble-1.0.1.ugly.js"></script>
<script src="js/eventList.js"></script>
</body>
</html>