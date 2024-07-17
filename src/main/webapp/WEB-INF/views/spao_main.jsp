<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="css/nav.css">
  <link rel="stylesheet" href="css/main.css?after?after?after">
  <link rel="stylesheet" href="css/tab.css">
  <link rel="stylesheet" href="css/footer.css">
  <script src="https://kit.fontawesome.com/f0e73cfa04.js" crossorigin="anonymous"></script>
</head>
<body>
<nav>
  <div class="wrapper">
    <div class="nav_logo">
      <a href="spao_main">
        <img src="img/top_spao_logo.png" alt="">
      </a>
    </div>
    <ul class="nav_menu">
      <li><a href="#">매거진</a></li>
      <li><a href="#">공지</a></li>
      <li><a href="best.html">베스트</a></li>
      <li><a href="#">여성</a></li>
      <li><a href="#">남성</a></li>
      <li><a href="#">혼성</a></li>
    </ul>
    <ul class="nav_member">
      <li><a href="#"><i class="fa-regular fa-user"></i></a></li>
      <li><a href="#"><i class="fa-solid fa-magnifying-glass"></i></a></li>
      <li><a href="#"><i class="fa-regular fa-heart"></i></a></li>
      <li><a href="#"><i class="fa-solid fa-basket-shopping"></i></a></li>
    </ul>
  </div>
</nav>
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
            <c:forEach  var="board" items="${boardList}">
              <li><a href="#">
                <img src="img/${board.main_img}" alt="">
              </a>
                <p class="item_name">
                  <span>${board.name}</span>
                  <i class="fa-regular fa-heart"></i>
                </p>
                <p class="price">${board.price}</p>
                <p class="discounted_price">${board.disc_price}</p>
                <ul class="col">
                  <li></li>
                  <li></li>
                  <li></li>
                  <li></li>
                  <li></li>
                </ul>
                <div class="stars">
                  <i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i>
                </div>
                <i class="fa-solid fa-heart" style="color: red;"></i>
                <span class="like_cnt">${board.like_cnt}</span>
                <p>리뷰수 <span>${board.review_cnt}</span></p>
                <div class="type">${board.type}</div>
                <div class="rank">${board.rankk}</div>
              </li>
            </c:forEach>
          </ul>
        </div>
      </div>
      <div id="tab1-2" class="tab_content">
        <div class="tab_c_arti">
          <ul class="weekly_best">
            <c:forEach  var="board" items="${boardList2}">
              <li><a href="#">
                <img src="img/${board.main_img}" alt="">
              </a>
                <p class="item_name">
                  <span>${board.name}</span>
                  <i class="fa-regular fa-heart"></i>
                </p>
                <p class="price">${board.price}</p>
                <p class="discounted_price">${board.disc_price}</p>
                <ul class="col">
                  <li></li>
                  <li></li>
                  <li></li>
                  <li></li>
                  <li></li>
                </ul>
                <div class="stars">
                  <i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i>
                </div>
                <i class="fa-solid fa-heart" style="color: red;"></i>
                <span class="like_cnt">${board.like_cnt}</span>
                <p>리뷰수 <span>${board.review_cnt}</span></p>
                <div class="type">${board.type}</div>
                <div class="rank">${board.rankk}</div>
              </li>
            </c:forEach>
          </ul>
        </div>
      </div>
      <div id="tab1-3" class="tab_content">
        <div class="tab_c_arti">
          <ul class="weekly_best">
            <c:forEach  var="board" items="${boardList3}">
              <li><a href="#">
                <img src="img/${board.main_img}" alt="">
              </a>
                <p class="item_name">
                  <span>${board.name}</span>
                  <i class="fa-regular fa-heart"></i>
                </p>
                <p class="price">${board.price}</p>
                <p class="discounted_price">${board.disc_price}</p>
                <ul class="col">
                  <li></li>
                  <li></li>
                  <li></li>
                  <li></li>
                  <li></li>
                </ul>
                <div class="stars">
                  <i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i>
                </div>
                <i class="fa-solid fa-heart" style="color: red;"></i>
                <span class="like_cnt">${board.like_cnt}</span>
                <p>리뷰수 <span>${board.review_cnt}</span></p>
                <div class="type">${board.type}</div>
                <div class="rank">${board.rankk}</div>
              </li>
            </c:forEach>
          </ul>
        </div>
      </div>
    </div>
  </div>
</section>
<footer>
  <div class="wrapper">
    <p>© 2024 spao-copymachine. All rights not reserved.</p>
  </div>
</footer>
<script src="js/jquery-3.6.4.min.js"></script>
<!-- <script src="js/nav.js"></script> -->
<script src="js/tab.js"></script>
</body>
</html>