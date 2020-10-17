<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, viewport-fit=cover">
    <meta name="apple-mobile-web-app-capable" content="yes" />

    <!-- Page Title -->
    <title>MIROOM GET START</title>

    <!-- Compressed Styles -->
    <link href="/static/handler/css/slides.min.css" rel="stylesheet" type="text/css">

    <!-- Custom Styles -->
    <!-- <link href="css/custom.css" rel="stylesheet" type="text/css"> -->

    <!-- jQuery 3.3.1 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Compressed Scripts -->
    <script src="/static/handler/js/slides.min.js" type="text/javascript"></script>

    <!-- Custom Scripts -->
    <!-- <script src="js/custom.js" type="text/javascript"></script> -->

    <!-- Fonts and Material Icons -->
    <link rel="stylesheet" as="font" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,600,700|Material+Icons"/>

</head>
<body class="slides horizontal simplifiedMobile animated">

<!-- SVG Library -->
<svg xmlns="http://www.w3.org/2000/svg" style="display:none">

</svg>

<!-- Panel Top #05 -->
<nav class="panel top">
    <div class="sections desktop">
        <div class="left"><a href="#" title="Slides Framework"></a></div>
        <div class="center">
            <ul class="menu">
                <li><a href="#"><img src="/static/handler/img/home/logo.png" width="35%"/></a></li>
            </ul>
        </div>
        <div class="right"><a class="button green gradient" href="#">Contact Us</a></div>
    </div>
    <div class="sections compact hidden">
        <div class="left"><a href="#" title="Slides Framework"><svg style="width:82px;height:24px"><use xmlns:xlink="#" xlink:href="#logo"></use></svg></a></div>
        <div class="right"><span class="button actionButton sidebarTrigger" data-sidebar-id="1"><svg><use xmlns:xlink="#" xlink:href="#menu"></use></svg></span></div>
    </div>
</nav>

<!-- Slide 1 (#34) -->
<section class="slide fade-6 kenBurns">
    <div class="content">
        <div class="container">
            <div class="wrap">

                <div class="fix-12-12">
                    <ul class="flex fixedSpaces verticalCenter reverse">
                        <li class="col-6-12 left middle">
                            <h1 class="ae-1 fromLeft">회의실 관리 플랫폼<br> M I R O O M</h1>
                            <p class="ae-2 fromLeft"><span class="opacity-8">언제 어디서든 예약하고 실시간 모니터링을 제공합니다.</span></p>
                            <a href="/login" class="button blue gradient ae-3 fromCenter cropLeft">시작하기</a>
                        </li>
                        <li class="col-6-12">
                            <img class="ae-4" width="605" src="/static/handler/img/home/monitor.png" alt="iPhones Thumbnail" data-action="zoom"/>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div class="background" style="background-image:url(/static/handler/img/home/room1.jpg)"></div>
</section>

<!-- Slide 2 (#60) -->
<section class="slide fade-6 kenBurns">
    <div class="content">
        <div class="container">
            <div class="wrap">

                <div class="fix-12-12">
                    <ul class="grid">
                        <li class="col-6-12 left">
                            <h1 class="ae-2 fromLeft">기능 살펴보기</h1>
                            <p class="ae-3 fromLeft"><span class="opacity-8">좀 더 나은 회의실 관리를 위한 미룸!</span></p>
                            <ul class="tabs controller uppercase bold ae-4 fromCenter" data-slider-id="60-1">
                                <li class="selected">관리자 시큐리티</li>
                                <li>데이터 시각화</li>
                                <li>회의실 현광관리</li>
                            </ul>
                        </li>
                        <li class="col-6-12 left ae-5 fromCenter">
                            <ul class="slider animated margin-top-4" data-slider-id="60-1">
                                <li class="selected fromCenter">
                                    <img class="wide" src="/static/handler/img/home/monitor2.png" alt="Video Thumbnail"/>
                                </li>
                                <li class="fromCenter">
                                    <img class="wide" src="/static/handler/img/home/monitor.png" alt="Video Thumbnail"/>
                                </li>
                                <li class="fromCenter">
                                    <img class="wide" src="/static/handler/img/home/monitor2.png" alt="Video Thumbnail"/>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div class="background" style="background-image:url(/static/handler/img/home/room2.jpg)"></div>
</section>


<!-- Popup Video -
<div class="popup autoplay" data-popup-id="60-1">
  <div class="close"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#close"></use></svg></div>
  <div class="content">
    <div class="container">
      <div class="wrap">
        <div class="fix-10-12">
          <div class="embedVideo popupContent">
            <iframe src="https://player.vimeo.com/video/101231747?color=ff0179&portrait=0" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>



<div class="popup autoplay" data-popup-id="60-2">
  <div class="close"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#close"></use></svg></div>
  <div class="content">
    <div class="container">
      <div class="wrap">
        <div class="fix-10-12">
          <div class="embedVideo popupContent">
            <iframe src="https://player.vimeo.com/video/101231747?color=ff0179&portrait=0" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


<div class="popup autoplay" data-popup-id="60-3">
  <div class="close"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#close"></use></svg></div>
  <div class="content">
    <div class="container">
      <div class="wrap">
        <div class="fix-10-12">
          <div class="embedVideo popupContent">
            <iframe src="https://player.vimeo.com/video/101231747?color=ff0179&portrait=0" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
-->


<!-- Slide 5 (#91) -->
<section class="slide fade-6 kenBurns">
    <div class="content">
        <div class="container">
            <div class="wrap">

                <div class="fix-12-12 toCenter">
                    <div class="fix-7-12">
                        <p class="margin-bottom-2 ae-1"><span class="opacity-6">What can i do for you?</p>
                        <h1 class="ae-2 huge fromAbove margin-bottom-2">미룸의 4가지 솔루션</h1>

                    </div>
                    <ul class="grid fixedSpaces left margin-top-10">
                        <li class="col-3-12 col-tablet-1-2 col-phablet-1-1 ae-4 fromLeft">
                            <h3>모니터링</h3>
                            <p class="tiny opacity-6">실시간 회의실에 대한 모니터링을 제공합니다.</p>
                        </li>
                        <li class="col-3-12 col-tablet-1-2 col-phablet-1-1 ae-5 fromLeft">
                            <h3>시각화</h3>
                            <p class="tiny opacity-6">고객님의 데이터를 바탕으로 한 데이터의 시각화를 제공합니다.</p>
                        </li>
                        <li class="col-3-12 col-tablet-1-2 col-phablet-1-1 ae-6 fromLeft">
                            <h3>시큐리티</h3>
                            <p class="tiny opacity-6">AWS 와 Spring Security 를 기반으로 고객님의 정보를 보호합니다.</p>
                        </li>
                        <li class="col-3-12 col-tablet-1-2 col-phablet-1-1 ae-7 fromLeft">
                            <h3>유지 보수 </h3>
                            <p class="tiny opacity-6">(주)제이솔루션에서 여러분의 서비스의 유지보수를 책임집니다. </p>
                        </li>
                    </ul>
                    <br>
                    <a href="#" class="button green gradient ae-3">구매</a>
                </div>

            </div>
        </div>
    </div>
    <div class="background" style="background-image:url(/static/handler/img/home/room3.jpg)"></div>
</section>


<!--Pricing -->
<section class="slide fade-6 kenBurns">
    <div class="content">
        <div class="container">
            <div class="wrap">

                <div class="fix-10-12">
                    <h1 class="ae-1">가격정책</h1>
                    <ul class="grid grid-83 noSpaces equal ae-2 fadeIn">
                        <li class="col-4-12 ae-3" style="background: #F5FBFE">
                            <h3>Free</h3>
                            <div class="price ae-5"><span class="currency">₩</span>0</div>
                            <div class="ae-5">
                                <h6 class="uppercase bold small opacity-4">도입 전 프로토 제공</h6>
                            </div>
                            <div class="margin-top-3 margin-bottom-3 equalElement ae-6">
                                <ul class="p tiny">
                                    <li><strong>관리자 페이지</strong></li>
                                </ul>
                            </div>
                            <a href="#" class="button blue gradient wide cropSides cropBottom ae-7">프리 버전</a>
                        </li>
                        <li class="col-4-12 ae-4">
                            <h3>골드</h3>
                            <div class="price ae-6"><span class="currency">₩</span>55,000</div>
                            <div class="ae-6">
                                <h6 class="uppercase bold small opacity-4">월 (Month)</h6>
                            </div>
                            <div class="margin-top-3 margin-bottom-3 equalElement ae-7">
                                <ul class="p tiny">
                                    <li><strong>관리자 페이지</strong></li>
                                    <li><strong>차트</strong></li>
                                    <li><strong>호스팅</strong></li>
                                    <li class="opacity-8">커스텀 도메인</li>
                                </ul>
                            </div>
                            <a href="#" class="button green gradient wide cropSides cropBottom ae-8">구매</a>
                        </li>
                        <li class="col-4-12 ae-5">
                            <h3>플래티넘</h3>
                            <div class="price ae-7"><span class="currency">₩</span>79,800</div>
                            <div class="ae-7">
                                <h6 class="uppercase bold small opacity-4">월 (Month)</h6>
                            </div>
                            <div class="margin-top-3 margin-bottom-3 equalElement ae-8">
                                <ul class="p tiny">
                                    <li><strong>관리자 페이지</strong></li>
                                    <li><strong>차트</strong></li>
                                    <li><strong>호스팅</strong></li>
                                    <li><strong>클라우드 서비스(AWS)</strong></li>
                                    <li class="opacity-8">커스텀도메인</li>
                                    <li class="opacity-8">커스텀 데이터베이스</li>
                                </ul>
                            </div>
                            <a href="#" class="button green gradient wide cropSides cropBottom ae-9">구매</a>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div class="background" style="background-image:url(/static/handler/img/home/room4.jpeg)"></div>
</section>

<!-- Slide 7 (#95) -->
<section class="slide fade-6 kenBurns">
    <div class="content">
        <div class="container">
            <div class="wrap">

                <div class="fix-6-12">
                    <h1 class="huge ae-1 margin-bottom-2"> 어플 다운로드 </h1>
                    <p class="hero ae-2 margin-bottom-3"><span class="opacity-8">MiROOM 연동 모바일 예약 어플 다운로드</span></p>

                    <form action="#" autocomplete="off" class="slides-form margin-bottom-3">
                        <input type="email" class="ae-3" name="email" placeholder="E-mail address"/>
                        <button type="submit" class="button blue gradient ae-4" name="submit">무료로 이용해 보세요</button>
                    </form>

                    <a href="#" class="button hollow ae-5"><!--<img src="assets/img/appstore.jpg" height="63"/></a>--><a href="#" class="button hollow ae-6"><img src="/static/handler/img/home/googleplay.jpg" height="63"/></a>
                </div>

            </div>
        </div>
    </div>
    <div class="background" style="background-image:url(/static/handler/img/home/room5.jpg)"></div>
</section>

<!-- Panel Bottom #01 -->
<nav class="panel bottom forceMobileView">
    <div class="sections desktop">
        <div class="left"><a href="#" class="opacity-8">(주)제이솔루션 <svg style="height:21px;"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#apple"></use></svg>(053)-111-1111</a></div>
        <div class="center"><span class="nextSlide"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#arrow-down"></use></svg></span></div>
        <div class="right"><span data-dropdown-id="2" class="button actionButton dropdownTrigger"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#share"></use></svg></span></div>
    </div>
    <div class="sections compact hidden">
        <div class="right">
            <span data-dropdown-id="2" class="button actionButton dropdownTrigger"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#share"></use></svg></span>
        </div>
    </div>
</nav>

<!-- Share Window -->
<div class="dropdown share bottom right" data-dropdown-id="2" data-text="Take a look at this" data-url="https://designmodo.com" data-pinterest-image="https://designmodo.com/wp-content/uploads/2015/10/Presentation.jpg">
    <div class="center padding-2">
        <div class="title">Share</div>
        <a href="#">Contact us</a>
    </div>
    <ul>
        <li class="social-facebook"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#fb-like"></use></svg></li>
        <li class="social-twitter"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#twitter"></use></svg></li>
        <li class="social-googlePlus"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#googlePlus"></use></svg></li>
        <li class="social-linkedin"><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#linkedin"></use></svg></li>
        <li class="mail" data-subject="Subject" data-body="Body">share by email</li>
    </ul>
</div>

<!-- Loading Progress Bar -->
<div class="progress-bar blue"></div>

</body>
</html>
