<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>BYEZ</title>
  <link rel="stylesheet" href="/css/nav.css">
  <link rel="stylesheet" href="/css/main.css">
  <link rel="stylesheet" href="/css/tab.css">
  <link rel="stylesheet" href="/css/slick.css">
  <link rel="stylesheet" href="/css/footer.css">
  <link rel="stylesheet" href="/css/quick.css">
  <script src="https://kit.fontawesome.com/f0e73cfa04.js" crossorigin="anonymous"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">

</head>
<body>
<jsp:include page="/WEB-INF/views/include/nav.jsp"/>
<section id="main_slider">
  <div class="center_wrap2">
    <div class="slide_container">
      <ul id="main_slide" class="slick">
        <li class="slider_item">
          <figure class="toms_menu_slide_img">
            <img src="img/qwerty.jpeg">
          </figure>
        </li>
        <li class="slider_item">
          <figure class="toms_menu_slide_img">
            <img src="img/qwerty2.jpeg">
          </figure>
        </li>
        <li class="slider_item">
          <figure class="toms_menu_slide_img">
            <img src="img/qwerty3.jpeg">
          </figure>
        </li>
        <li class="slider_item">
          <figure class="toms_menu_slide_img">
            <img src="img/qwerty4.jpeg">
          </figure>
        </li>
        <li class="slider_item">
          <figure class="toms_menu_slide_img">
            <img src="img/qwerty5.jpeg">
          </figure>
        </li>
      </ul>
    </div>
    <div id="red">
      <div class="slide_btn">
        <div class="slide_btn_prev">
          <a href="#">
            <!-- <i class="fa-solid fa-angle-left"></i> -->
            <img src="img/left.png" alt="">
          </a>
        </div>
        <div class="slide_btn_next">
          <a href="#">
            <!-- <i class="fa-solid fa-angle-right"></i> -->
            <img src="img/right.png" alt="">
          </a>
        </div>
      </div>
      <!-- <div class="play_btn">
          <button class="play">
              <i class="fa-solid fa-play"></i>
          </button>
          <button class="pause">
              <i class="fa-solid fa-pause"></i>
          </button>
      </div> -->
      <!-- <div class="fraction">1 / 3</div> -->
    </div>
  </div>
</section>
<section>
  <div class="wrapper">
    <p>위클리 베스트</p>
    <!-- 탭 메뉴 -->
    <ul class="tab_menu">
      <li><a href="#tab1-1">여성</a></li>
      <li><a href="#tab1-2">남성</a></li>
      <li><a href="#tab1-3">혼성</a></li>
    </ul>
    <!-- 탭 콘텐츠 -->
    <div class="≈">
      <div id="tab1-1" class="tab_content">
        <div class="tab_c_arti">
          <ul class="weekly_best">
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
          </ul>
        </div>
      </div>
      <div id="tab1-2" class="tab_content">
        <div class="tab_c_arti">
          <ul class="weekly_best">
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
          </ul>
        </div>
      </div>
      <div id="tab1-3" class="tab_content">
        <div class="tab_c_arti">
          <ul class="weekly_best">
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
            <li>
              <a href="#">
                <img src="img/1.jpeg" alt="">
              </a>
              <p class="item_name">
                <span>[COOL] 칼라 나시 카디건 세트_SPCKE37W92 [COOL] 칼라 나시 카디건 세트_SPCKE37</span>
              </p>
              <p class="sales_price">30,000</p>
              <p class="discounted_price">20,000</p>
              <ul class="col">
                <li style="background-color: black;"></li>
                <li style="background-color: lightgray;"></li>
                <li style="background-color: gray;"></li>
                <li style="background-color: darkgray;"></li>
                <li style="background-color: navy;"></li>
                <li style="background-color: ivory;"></li>
                <li style="background-color: khaki;"></li>
                <li style="background-color: beige;"></li>
                <li style="background-color: white;"></li>
                <li style="background-color: blue;"></li>
                <li style="background-color: sandybrown;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: skyblue;"></li>
                <li style="background-color: brown;"></li>
                <li style="background-color: green;"></li>
              </ul>
              <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <i class="fa-solid fa-heart" style="color: red;"></i>
              <span class="like_cnt">30</span>
              <p class="review_cnt">리뷰수 <span>10</span></p>
              <div class="sex">여성용</div>
              <div class="rank">1</div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</section>
<%@include file="../views/include/footer.jsp"%>
<%@include file="../views/include/quick.jsp"%>
<script src="/js/jquery-3.6.4.min.js"></script>
<script src="/js/nav.js"></script>
<script src="/js/tab.js"></script>
<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script src="/js/slick.js"></script>
</body>
</html>