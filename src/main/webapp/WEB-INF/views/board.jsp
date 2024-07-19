<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>window98/board</title>
  <link rel="stylesheet" href="css/window98.css">
  <link rel="stylesheet" href="css/window.css">
  <link rel="stylesheet" href="css/todoList.css">
  <link rel="stylesheet" href="css/board.css?after?after?after?after?after">
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
        <a>
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
      <span>게시판.html</span>
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
        <p>~~ 게시판 ~~</p>
        <form action="<c:url value="/board"/>" class="search-form" method="get">
          <select class="search-option" name="option">
            <option value="A" ${ph.sc.option=='A' || ph.sc.option=='' ? "selected" : ""}>제목+내용</option>
            <option value="T" ${ph.sc.option=='T' ? "selected" : ""}>제목</option>
            <option value="W" ${ph.sc.option=='W' ? "selected" : ""}>글쓴이</option>
          </select>

          <input type="text" name="keyword" class="search-input" value="${ph.sc.keyword}" placeholder="검색어를 입력해주세요">
          <input type="submit" class="search-button" value="검색">
        </form>
        <table>
          <tr>
            <th scope="col">번호</th>
            <th scope="col">제목</th>
            <th scope="col">글쓴이</th>
            <th scope="col">조회 수</th>
            <th scope="col">댓글 수</th>
            <th scope="col">등록 날짜</th>
          </tr>
          <c:forEach  var="board" items="${list}">
            <tr>
              <td>${board.bno}</td>
              <td><a href="/boardForm?bno=<c:out value="${board.bno}"/>">${board.title}</a></td>
              <td>${board.writer}</td>
              <td>${board.view_cnt}</td>
              <td>${board.comment_cnt}</td>
              <td>${board.reg_date}</td>
<%--              <td><button class="delete">삭제</td>--%>
            </tr>
          </c:forEach>
        </table>
<%--        <div class="paging">--%>
<%--          <c:if test="${ph.showPrev}">--%>
<%--            <a class="page" href="<c:url value='/board?curPage=${ph.naviStart-1}&pageSize=${ph.pageSize}'/>">&lt;</a>--%>

<%--          </c:if>--%>

<%--          <c:forEach var="i" begin="${ph.naviStart}" end="${ph.naviEnd}">--%>
<%--            <a href="<c:url value='/board?curPage=${i}&pageSize=${ph.pageSize}'/>">${i}</a>--%>
<%--          </c:forEach>--%>

<%--          <c:if test="${ph.showNext}">--%>
<%--            <a class="page" href="<c:url value='/board?curPage=${ph.naviEnd+1}&pageSize=${ph.pageSize}'/>">&gt;</a>--%>
<%--          </c:if>--%>
<%--        </div>--%>
        <div class="paging">
            <c:if test="${ph.showPrev}">
              <a class="page" href="<c:url value='/board${ph.sc.getQueryString(ph.naviStart-1)}'/>">&lt;</a>
            </c:if>
            <c:forEach var="i" begin="${ph.naviStart}" end="${ph.naviEnd}">
              <a class="page ${i==ph.sc.curPage? "paging-active" : ""}" href="<c:url value='/board${ph.sc.getQueryString(i)}'/>">${i}</a>
            </c:forEach>
            <c:if test="${ph.showNext}">
              <a class="page" href="<c:url value='/board${ph.sc.getQueryString(ph.naviEnd+1)}'/>">&gt;</a>
            </c:if>
        </div>
        <br>
        <a href="boardWrite">글 쓰기</a>
<%--      </div>--%>
    </div>
  </section>
  <footer>
    <%@include file="../views/include/footer1.jsp"%>
    <div class="opened_window_wraper">
      <ul>
        <li>
          <a href="board">
            <div class="opened_window chosen this">
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
</body>
</html>