<%@ page import="java.util.Arrays" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>window98/login</title>
  <link rel="stylesheet" href="css/window98.css?after">
  <link rel="stylesheet" href="css/window.css">
  <link rel="stylesheet" href="css/todoList.css?after">
  <link rel="stylesheet" href="css/loginForm.css">
  <script src="https://kit.fontawesome.com/f0e73cfa04.js" crossorigin="anonymous"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
  <style>
    .toResister {position: absolute; right: 0; color: #386ba1; font-weight: bold; text-decoration: underline; font-size: 18px; bottom: 40px; cursor: pointer;}
  </style>
</head>
<body>
<div class="section_wrap">
  <nav>
    <ul>
      <li>
        <a>
          <img src="img/computer.png" alt="">
        </a>
        <span>내 컴퓨터</span>
      </li>
      <li>
        <a>
          <img src="img/key2.png" alt="">
        </a>
        <span>로그인</span>
      </li>
      <li>
        <a>
          <img src="img/zip.png" alt="">
        </a>
        <span>개인폴더1</span>
      </li>
      <li>
        <a>
          <img src="img/zip.png" alt="">
        </a>
        <span>개인폴더2</span>
      </li>
      <li>
        <a>
          <img src="img/zip.png" alt="">
        </a>
        <span>개인폴더3</span>
      </li>
    </ul>
  </nav>
  <section class="shadow windowFrame" style="max-height: 400px;">
    <div class="blueBar">
      <span>로그인</span>
      <ul>
        <li class="shadow" onclick="window.location.href = 'window98';">
          <i class="fa-solid fa-x"></i>
        </li>
      </ul>
    </div>
    <div class="content">
      <div class="content_wrap" style="height: 70%;">
        <form action="LoginController" method="post">

          <%
            String myId = "";
            Cookie[] cookies = request.getCookies();

            for(Cookie cookie : cookies) {
              if(cookie.getName().equals("id")) {
                myId = cookie.getValue();
              }
            }
          %>

          <p>로그인</p>
          <label for="uname"><b>아이디</b></label>
          <input type="text" placeholder="Id" name="id" value="<%= myId %>" id="id">
          <label for="psw"><b>비밀번호</b></label>
          <input type="password" placeholder="Password" name="pwd" id="password">
          <label class="remember">
            <span>아이디 기억</span>
            <input type="checkbox" name="remember" ${empty cookie.id.value ? "" : "checked"}>
          </label>
          <button type="submit">Login</button>
          <span class="toResister" onclick="window.location.href = 'register';">회원 가입</span>
        </form>
      </div>
    </div>
  </section>
  <footer>
    <%@include file="../views/include/footer1.jsp"%>
    <div class="opened_window_wraper">
      <ul>
        <li>
          <a>
            <div class="opened_window chosen">
              <span>로그인</span>
            </div>
          </a>
        </li>
      </ul>
    </div>
    <div class="clock_wrap">
      <div class="clock_container">
        <div class="clock2">
          <img src="img/speaker.png" alt="">
          <p>
            <span>오후</span>
            <span>12</span>
            <span>:</span>
            <span>00</span>
          </p>
        </div>
      </div>
    </div>
    <div class="bar last_bar">
      <div></div>
      <div></div>
    </div>
  </footer>
</div>

<script src="js/jquery-3.6.4.min.js"></script>
<script src="js/window98.js"></script>
<script src="js/login.js?after"></script>
</body>
</html>