<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>window98/piano</title>
  <link rel="stylesheet" href="css/window98.css?after?after">
  <link rel="stylesheet" href="css/window.css">
  <link rel="stylesheet" href="css/piano.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
<body class="body_background">
<%
  String id = (String)session.getAttribute("id");
  String name = (String)session.getAttribute("name");
  boolean isLoggedIn = id != null;
%>
<div class="section_wrap">
  <nav>
    <ul>
      <%@include file="../views/include/nav1.jsp"%>
      <%@include file="../views/include/nav5.jsp"%>
      <%@include file="../views/include/nav2.jsp"%>
      <%@include file="../views/include/nav3.jsp"%>
      <li>
        <a>
          <img src="img/music2.png" alt="">
        </a>
        <span>피아노</span>
      </li>
    </ul>
  </nav>
  <section class="shadow">
    <div class="blueBar">
      <span>피아노.html</span>
      <ul>
        <li class="shadow"><i class="fa-solid fa-window-minimize"></i></li>
        <li class="shadow"><i class="fa-regular fa-window-maximize"></i></li>
        <li class="shadow"><i class="fa-solid fa-x"></i></li>
      </ul>
    </div>
    <div class="content">
      <button class="songs major C">C major</button>
      <button class="songs major D">D major</button>
      <button class="songs major E">E major</button>
      <button class="songs major F">F major</button>
      <button class="songs major G">G major</button>
      <button class="songs major A">A major</button>
      <button class="songs major B">B major</button>
      <button class="songs minor C">C minor</button>
      <button class="songs minor D">D minor</button>
      <button class="songs minor E">E minor</button>
      <button class="songs minor F">F minor</button>
      <button class="songs minor G">G minor</button>
      <button class="songs minor A">A minor</button>
      <button class="songs minor B">B minor</button>
      <button class="songs seven C">C7</button>
      <button class="songs seven D">D7</button>
      <button class="songs seven E">E7</button>
      <button class="songs seven F">F7</button>
      <button class="songs seven G">G7</button>
      <button class="songs seven A">A7</button>
      <button class="songs seven B">B7</button>
      <button class="songs sharp C">C#</button>
      <button class="songs sharp D">D#</button>
      <button class="songs sharp E">E♭/m</button>
      <button class="songs sharp F">F#</button>
      <button class="songs sharp G">G#</button>
      <button class="songs sharp A">A#</button>
      <button class="songs sharp B">B♭</button>
      <button class="songs sus4 C">Csus4</button>
      <button class="songs sus4 D">D♭</button>
      <button class="songs sus4 E">Esus4</button>
      <button class="songs sus4 F">Fsus4</button>
      <button class="songs sus4 G">Gsus4</button>
      <button class="songs sus4 A">A♭</button>
      <button class="songs sus4 B">B♭m</button>
      <button class="songs dim C">Cdim</button>
      <button class="songs dim D">Dm7</button>
      <button class="songs dim E">Edim</button>
      <button class="songs dim F">Fm7</button>
      <button class="songs dim G">Gdim</button>
      <button class="songs dim A">Adim</button>
      <button class="songs dim B">B♭7</button>
      <ul class="keys">
        <li class="pianoKey white">0</li>
        <li class="pianoKey black">1</li>
        <li class="pianoKey white">2</li>
        <li class="pianoKey black">3</li>
        <li class="pianoKey white">4</li>
        <li class="pianoKey white">5</li>
        <li class="pianoKey black">6</li>
        <li class="pianoKey white">7</li>
        <li class="pianoKey black">8</li>
        <li class="pianoKey white">9</li>
        <li class="pianoKey black">10</li>
        <li class="pianoKey white">11</li>
        <li class="pianoKey white">12</li>
      </ul>
    </div>
  </section>
  <footer>
    <%@include file="../views/include/footer1.jsp"%>
    <div class="opened_window_wraper">
      <ul>
        <li>
          <a href="board">
            <div class="opened_window">
              <img src="img/application.png" alt="">
              <span>게시판.html</span>
            </div>
          </a>
        </li>
        <li>
          <a href="cardGame">
            <div class="opened_window">
              <img src="img/cards.png" alt="">
              <span>카드_게임.html</span>
            </div>
          </a>
        </li>
        <li>
          <a href="piano">
            <div class="opened_window chosen this">
              <img src="img/music2.png" alt="">
              <span>피아노.html</span>
            </div>
          </a>
        </li>
        <li>
          <a>
            <div class="opened_window windowComcom">
              <img src="img/computer.png" alt="">
              <span>내 컴퓨터</span>
            </div>
          </a>
        </li>
      </ul>
    </div>
    <%@include file="../views/include/footer2.jsp"%>
  </footer>
  <%@include file="../views/include/modal.jsp"%>
</div>
<%@include file="../views/include/bulb.jsp"%>


<script src="js/jquery-3.6.4.min.js"></script>
<script src="js/window98.js"></script>
<script src="js/piano.js?after"></script>
</body>
</html>