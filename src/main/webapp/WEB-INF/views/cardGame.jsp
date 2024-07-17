<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>window98/cardGame</title>
    <link rel="stylesheet" href="css/window98.css?after?after">
    <link rel="stylesheet" href="css/window.css">
    <link rel="stylesheet" href="css/cardGame.css">
    <script src="https://kit.fontawesome.com/f0e73cfa04.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <style>
        #ulList li {margin: 10px 0}
        #ulList li button {margin-left: 10px;}
    </style>
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
            <li>
                <a>
                    <img src="img/cards.png" alt="">
                </a>
                <span>카드_게임</span>
            </li>
            <%@include file="../views/include/nav4.jsp"%>
        </ul>
    </nav>
    <section class="shadow">
        <div class="blueBar">
            <span>카드_게임.html</span>
            <ul>
                <li class="shadow"><i class="fa-solid fa-window-minimize"></i></li>
                <li class="shadow"><i class="fa-regular fa-window-maximize"></i></li>
                <li class="shadow"><i class="fa-solid fa-x"></i></li>
            </ul>
        </div>
        <div class="content">
            <div id="board">
            </div>
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
                        <div class="opened_window chosen this">
                            <img src="img/cards.png" alt="">
                            <span>카드_게임.html</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="piano">
                        <div class="opened_window">
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
<script src="js/cardGame.js"></script>
</body>
</html>