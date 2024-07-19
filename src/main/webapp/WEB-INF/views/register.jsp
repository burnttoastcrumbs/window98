<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>window98/register</title>
  <link rel="stylesheet" href="css/window98.css">
  <link rel="stylesheet" href="css/window.css">
  <link rel="stylesheet" href="css/todoList.css">
  <link rel="stylesheet" href="css/login.css?after">
  <link rel="stylesheet" href="css/register.css?after?after">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
  <style>
    .content_wrap>input:nth-of-type(2) {
      top: 115px;
    }
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
  <section class="shadow windowFrame">
    <div class="blueBar">
      <span>회원 가입</span>
      <ul>
        <li class="shadow" onclick="window.location.href = 'window98';">
          <i class="fa-solid fa-x"></i>
        </li>
      </ul>
    </div>
    <div class="content">
      <form action="userInsert" method="post">
      <div class="content_wrap">
        <p>회원 가입</p>
        <label for="uname"><b>아이디</b></label>
        <input type="text" placeholder="Id" name="id" id="id" required>
        <label for="psw"><b>비밀번호</b></label>
        <input type="password" placeholder="password" name="pwd" id="password" required>
        <label for="psw"><b>비밀번호 확인</b></label>
        <input type="password" placeholder="passwordCheck" name="pwdCheck" id="passwordCheck" required>
        <label for="uname"><b>이름</b></label>
        <input type="text" placeholder="name" name="name" value="" id="name" required>
        <label for="psw"><b>성별</b></label>
        <div class="raidoWrapper">
          <input type="radio" name="gender" id="gender1" value="1" required name="gender" checked class="raido">
          <span>남성</span>
          </input>
          <input type="radio" name="gender" id="gender2" value="2" required name="gender" class="raido">
          <span>여성</span>
          </input>
          <input type="radio" name="gender" id="gender3" value="3" required name="gender" class="raido">
          <span>기타</span>
          </input>
        </div>
        <label for="uname"><b>생년월일</b></label>
        <input type="text" placeholder="birthDate" name="birthDate" value="" id="birthDate" required>
        <label for="uname"><b>휴대전화 번호</b></label>
        <input type="text" placeholder="phoneNumber" name="phoneNumber" value="" id="phoneNumber" required>
        <label for="psw"><b>이메일 주소</b></label>
        <input type="text" placeholder="EmailAdress" name="email" id="EmailAdress" required>



        <!-- <label class="remember">
            <span>아이디 기억</span>
            <input type="checkbox" name="remember">
        </label> -->
<%--        <button type="submit" class="shadow" onclick="window.location.href = 'window98';">회원 가입</button>--%>
        <button type="submit" class="shadow" onclick="return validation();">회원 가입</button>
        <button class="shadow" onclick="window.location.href = 'window98';">취소</button>
      </div>
      </form>
    </div>
  </section>
  <footer>
    <div class="index_wraper">
      <a>
        <div class="index">
          <img src="img/windowLogo.png" alt="">
          <span>시작 화면</span>
        </div>
      </a>
    </div>
    <div class="bar">
      <div></div>
      <div></div>
    </div>
    <div class="ie">
      <div>
        <a>
          <img src="img/ie.png" alt="">
        </a>
      </div>
      <div>
        <a>
          <img src="img/startupSound.png" alt="">
        </a>
      </div>
    </div>
    <div class="bar">
      <div></div>
      <div></div>
    </div>
    <div class="opened_window_wraper">
      <ul>
        <li>
          <a>
            <div class="opened_window chosen">
              <span>회원 가입</span>
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
<script src="js/register.js?after"></script>
</body>
</html>