<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>꿀 소식</title>

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
<#-- Preloader -->
<#--
<div id="preloader">
    <div id="status">
        <div class="loadicon icon-cloud-download wow tada infinite" style="-webkit-animation-duration:8s"></div>
    </div>
</div>
-->
<header>
<#-- ===========================
HERO AREA
=========================== -->
    <div id="hero">
        <div class="container herocontent">
            <h2 class="animated fadeInUp" style="-webkit-animation-duration:2s">꿀 소식</h2>
            <h4 class="animated fadeInDown" style="-webkit-animation-duration:3s">꿀 같은 이벤트 소식을 한눈에</h4>
        </div>

    <#-- Featured image on the Hero area -->
        <img class=" animated bounceInUp" style="-webkit-animation-duration:4s" src="img/honey_128.png" alt="Featured Work">
    </div><#--HERO AREA END-->

    <#--
    <#include "./navbar.ftl">
    -->

</header><#--header end-->
<#-- SECTION SEPARETOR LINE -->
<#-- ===========================
TESTIMONIAL SECTION START
=========================== -->
<div class="container">
    <div class="row">
        <ul class="nav nav-tabs" style="margin-bottom: 15px;">
            <li class="active"><a href="#home" data-toggle="tab" aria-expanded="false">홈
                <div class="ripple-container"></div>
            </a></li>
            <li class=""><a href="#focus" data-toggle="tab" aria-expanded="false">주목 핫딜
                <div class="ripple-container"></div>
            </a></li>
            <li class=""><a href="#latestClien" data-toggle="tab" aria-expanded="false">hot 클리앙
                <div class="ripple-container"></div>
            </a></li>
            <li class=""><a href="#latestPpompu" data-toggle="tab" aria-expanded="false">hot 뽐뿌
                <div class="ripple-container"></div>
            </a></li>
        <#--
        <li class="active"><a href="#profile" data-toggle="tab" aria-expanded="true">Profile<div class="ripple-container"></div></a></li>
        <li class="disabled"><a>Disabled<div class="ripple-container"></div></a></li>
        -->
        <#--
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="bootstrap-elements.html" data-target="#" aria-expanded="false">
                최신 <span class="caret"></span>
                <div class="ripple-container"></div></a>
            <ul class="dropdown-menu">
                <li><a href="#latestClien" data-toggle="tab">Clien 최신</a></li>
                <li class="divider"></li>
                <li><a href="#latestPpompu" data-toggle="tab">PPompu 최신</a></li>
            </ul>
        </li>
        -->
        </ul>
    </div>
    <div class="row">
        <div class="col-md-4">
        <#--
        <h2 id="nav-tabs">Tabs</h2>
        -->
            <div class="bs-component">

                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade active in" id="home">
                        <div id="topReadEvent" class="container">
                            <div class="sectionhead animated bounceInUp" style="-webkit-animation-duration:2s">
                                <span class="bigicon icon-bubbles"></span>
                                <h3>핫딜 타임라인</h3>
                                <h5>최신순 핫딜 이벤트</h5>
                                <hr class="separetor">
                            </div><#-- TESTIMONIAL SECTIONHEAD END -->

                            <div class="row">
                            <#list eventList as event>
                                <div class="panel panel-default animated zoomIn" style="-webkit-animation-duration:1s">
                                    <a class="black-link" href="${event.link}">
                                        <div class="panel-body latest-item">
                                            <div class="clientsphoto">
                                                <img src="img/honey_128.png" alt="">
                                            </div>
                                            <div class="quote">
                                                <div>${event.category} ${event.title}</div>
                                                <h5>${event.writeDate}</h5>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </#list>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane fade in" id="focus">
                        <div id="topReadEvent" class="container">
                            <div class="sectionhead animated bounceInUp" style="-webkit-animation-duration:2s">
                                <span class="bigicon icon-bubbles"></span>
                                <h3>주목 이벤트</h3>
                                <h5>지금 가장 주목 받고 있는 이벤트</h5>
                                <hr class="separetor">
                            </div><#-- TESTIMONIAL SECTIONHEAD END -->

                            <div class="row">
                            <#list top3EventList as event>
                                <div class="panel panel-default animated zoomIn" style="-webkit-animation-duration:1s">
                                    <a class="black-link" href="${event.link}">
                                        <div class="panel-body latest-item">
                                            <div class="clientsphoto">
                                                <img src="img/honey_128.png" alt="">
                                            </div>
                                            <div class="quote">
                                                <div>${event.category} ${event.title}</div>
                                                <h5>${event.writeDate}</h5>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </#list>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane fade in" id="latestClien">
                        <div id="topReadEvent" class="container">
                            <div class="sectionhead animated bounceInUp" style="-webkit-animation-duration:2s">
                                <span class="bigicon icon-bubbles"></span>
                                <h3>클리앙 최신 이벤트</h3>
                                <h4>최근 등록 된 이벤트 소식</h4>
                                <hr class="separetor">
                            </div><#-- TESTIMONIAL SECTIONHEAD END -->

                            <div class="row">
                            <#list latestClienEventList as event>
                                <div class="panel panel-default animated zoomIn" style="-webkit-animation-duration:1s">
                                    <a class="black-link" href="${event.link}">
                                        <div class="panel-body latest-item">
                                            <div class="clientsphoto">
                                                <img src="img/honey_128.png" alt="">
                                            </div>
                                            <div class="quote">
                                                <div>${event.category} ${event.title}</div>
                                                <h5>${event.writeDate}</h5>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </#list>
                                <a href="/clien" class="btn btn-default btn-lg btn-block btn-raised">전체 보기</a>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane fade in" id="latestPpompu">
                        <div id="topReadEvent" class="container">
                            <div class="sectionhead animated bounceInUp" style="-webkit-animation-duration:2s">
                                <span class="bigicon icon-bubbles"></span>
                                <h3>뽐뿌 최신 이벤트</h3>
                                <h4>최근 등록 된 이벤트 소식</h4>
                                <hr class="separetor">
                            </div><#-- TESTIMONIAL SECTIONHEAD END -->

                            <div class="row">
                            <#list latestPpompuEventList as event>
                                <div class="panel panel-default animated zoomIn" style="-webkit-animation-duration:1s">
                                    <a class="black-link" href="${event.link}">
                                        <div class="panel-body latest-item">
                                            <div class="clientsphoto">
                                                <img src="img/honey_128.png" alt="">
                                            </div>
                                            <div class="quote">
                                                <div>${event.category} ${event.title}</div>
                                                <h5>${event.writeDate}</h5>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </#list>
                                <a href="/ppompu" class="btn btn-default btn-lg btn-block btn-raised">전체 보기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="source-button" class="btn btn-primary btn-xs" style="display: none;">&lt; &gt;</div>
            </div>
        </div>
    </div>
</div>
</div>


<div id="portfolio">
    <div class="sectionhead animated bounceInUp" style="-webkit-animation-duration:2s">
        <span class="bigicon icon-rocket"></span>
        <h3>A few recent works</h3>
        <hr class="separetor">
    </div><#-- PORTFOLIO SECTION HEAD END -->

<#-- PORTFOLIO ITEMS START -->
    <div class="portfolioitems container">
        <ul>
            <div id="shotsByPlayerId">
            <#--
            <img src="http://www.ppomppu.co.kr/images/main/201111/logo_small.gif">
            -->
                <h4>추가되었으면 하는 곳을 알려주세요.</h4>
            </div>
        </ul><#--REFER TO THE js/drifolio.js-->
    </div><#-- PORTFOLIO ITEMS END -->
<#--Replace the URL below with your dribbble profile URL-->
<#--
<a class="btn btn-default animated fadeInUp" href="#" role="button">
    <span class="btnicon icon-social-dribbble"></span>
    <span class="button_text">View all items</span>
</a>
-->
</div><#-- PORTFOLIO SECTION END -->

<#-- ===========================
FOOTER START
=========================== -->
<footer>
    <div class="container">
        <span class="bigicon icon-like"></span>
        <div class="footerlinks"></div>
    <#--
    <div class="footerlinks">
        <ul>
            <li><a href="#hero">Home</a></li>
            <li><a href="#clien">클리앙</a></li>
            <li><a href="#ppompu">뽐뿌</a></li>
            <li><a href="#doctc">독특닷컴</a></li>
            <li><a href="mailto:oskmkr@naver.com">Contact</a></li>
        </ul>
    </div>
    -->
        <div class="copyright"><#-- FOOTER COPYRIGHT START -->
            <p>Copyrightⓒ. 2016 oskmkr All Rights Reserved.</p>
        </div><#-- FOOTER COPYRIGHT END -->
    <#--
    <div class="footersocial animated fadeInUp" style="-webkit-animation-duration:3s"><#-- FOOTER SOCIAL ICONS START --#>
        <ul>
            <li><a href="http://facebook.com/MamunSrizon"><span class="icon-social-facebook"></span></a></li>
            <li><a href="http://twitter.com/MamunSrizon"><span class="icon-social-twitter"></span></a></li>
            <li><a href="#"><span class="icon-social-youtube"></span></a></li>
            <li><a href="http://dribbble.com/srizon"><span class="icon-social-dribbble"></span></a></li>
            <li><a href="#"><span class="icon-social-tumblr"></span></a></li>
        </ul>
    </div><#-- FOOTER SOCIAL ICONS END --#>
    -->
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