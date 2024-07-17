<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>window98</title>
    <link rel="stylesheet" href="css/window98.css?after">
    <script src="https://kit.fontawesome.com/f0e73cfa04.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>

<%
    String id = (String) session.getAttribute("id");
    boolean isLoggedIn = id != null;
    String name = (String)session.getAttribute("name");
%>
<body class="<%= isLoggedIn ? "body_background" : "" %>">

<div class="section_wrap">

    <%
        if (isLoggedIn) {
            pageContext.include("../views/include/loginWindow98.jsp");
        } else {
            pageContext.include("../views/include/logoutWindow98.jsp");
        }
    %>

<%--<%--%>
<%--    String id = (String) session.getAttribute("id");--%>
<%--    boolean isLoggedIn = id != null;--%>
<%--    String nav = "logoutWindow98";--%>

<%--    if (isLoggedIn) {--%>
<%--        nav = "loginWindow98";--%>
<%--    }--%>
<%--%>--%>
<%--<body class="<%= isLoggedIn ? "body_background" : "" %>">--%>

<%--<div class="section_wrap">--%>

<%--        <jsp:include page="../views/include/<%= nav %>.jsp" />--%>




    <section>
        <% if (isLoggedIn) { %>
        <img src="img/IMG_7498.png" alt="" class="block">
        <div class="one block"></div>
        <div class="two block"></div>
        <img src="img/pic1.jpeg" alt="" class="pretty first block">
        <img src="img/pic2.jpeg" alt="" class="pretty second block">
        <img src="img/pic3.jpeg" alt="" class="pretty third block">
        <img src="img/dog.png" alt="" class="dog block">
        <div class="balloon blockBalloon">
            어서오세요! <br><%= name%> 님.
            <button><i class="fa-solid fa-x"></i></button>
        </div>
        <% } else { %>
<%--        <img src="img/rocky.png" alt="" class="dog2">--%>
        <% } %>

    </section>
    <footer>
    <%@include file="../views/include/footer1.jsp"%>
        <div class="opened_window_wraper">
            <ul>
                <!-- <li>
                    <a href="todoList">
                        <div class="opened_window">
                            <img src="img/note.png" alt="">
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
                        <div class="opened_window">
                            <img src="img/music2.png" alt="">
                            <span>피아노.html</span>
                        </div>
                    </a>
                </li> -->
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
<%--<jsp:include page="../views/include/bulb.jsp" />--%>

<script src="js/jquery-3.6.4.min.js"></script>
<script src="js/opened_window.js"></script>
<script src="js/window98.js?after"></script>
</body>
</html>