<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>window98/board/boardWrite</title>
  <link rel="stylesheet" href="css/window98.css">
  <link rel="stylesheet" href="css/window.css">
  <link rel="stylesheet" href="css/todoList.css">
  <link rel="stylesheet" href="css/board.css">
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

//    String bulbStatus = (String) session.getAttribute("bulbStatus");
//    if (bulbStatus == null) {
//        bulbStatus = "off";
//        session.setAttribute("bulbStatus", bulbStatus);
//    }

%>
<div class="section_wrap">
  <nav>
    <ul>
      <%@include file="../views/include/nav1.jsp"%>
      <%@include file="../views/include/nav5.jsp"%>
      <li>
        <a href="board">
          <img src="img/application.png" alt="">
        </a>
        <span>게시판</span>
      </li>
      <%@include file="../views/include/nav3.jsp"%>
      <%@include file="../views/include/nav4.jsp"%>
    </ul>
  </nav>
  <section class="shadow">
    <div class="blueBar">
      <span>게시판/내용.html</span>
      <ul>
        <li class="shadow"><i class="fa-solid fa-window-minimize"></i></li>
        <li class="shadow"><i class="fa-regular fa-window-maximize"></i></li>
        <li class="shadow"><i class="fa-solid fa-x"></i></li>
      </ul>
    </div>
    <div class="content">
      <div class="content_wrap">
        <button id="buttonnnn">입력</button>
        <ul id="ulList">
        </ul>

<%--        <form action="boardDelete" method="post">--%>
          <form action="boardUpdate" method="post">
          <input type="hidden" name="bno" value="${board.bno}">
          <label><b>제목</b></label>
          <input type="text" placeholder="제목" name="title" value="${board.title}" id="title" required style="width: 300px">
          <label><b>글쓴이</b></label>
          <input type="text" placeholder="<%= id %>" name="writer" value="${board.writer}" id="writer" required readonly style="width: 200px">
          <br>
          <label><b>내용</b></label>
            <textarea placeholder="내용을 적어주세요." name="content" id="content" required style="height: 200px">${board.content}</textarea>


            <br>
          <button>글 삭제</button>
            <button type="submit">글 수정</button>
            <button type="button" onclick="cancel()">취소</button>
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
            <div class="opened_window chosen this">
              <img src="img/application.png" alt="">
              <span>게시판/내용.html</span>
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
<script src="js/todoList.js"></script>
<script>
  function cancel() {
    window.location.href = 'board';
  }
  document.getElementById('boardForm').addEventListener('keypress', function (e) {
    if (e.key === 'Enter') {
      e.preventDefault();
    }
  });
</script>
</body>
</html>