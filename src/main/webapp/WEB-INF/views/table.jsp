<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="ko">--%>
<%--<head>--%>
<%--  <meta charset="UTF-8">--%>
<%--  <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--  <title>window98/board</title>--%>
<%--  <link rel="stylesheet" href="css/window98.css">--%>
<%--  <link rel="stylesheet" href="css/window.css">--%>
<%--  <link rel="stylesheet" href="css/todoList.css">--%>
<%--  <link rel="stylesheet" href="css/board.css?after?after">--%>
<%--  <script src="https://kit.fontawesome.com/f0e73cfa04.js" crossorigin="anonymous"></script>--%>
<%--  <link rel="preconnect" href="https://fonts.googleapis.com">--%>
<%--  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>--%>
<%--  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">--%>
<%--</head>--%>
<%--<style>--%>
<%--  /*.paging {border:1px solid black;}*/--%>
<%--</style>--%>
<%--<body class="body_background">--%>
<%--<%--%>
<%--  String id = (String)session.getAttribute("id");--%>
<%--  String name = (String)session.getAttribute("name");--%>
<%--  boolean isLoggedIn = id != null;--%>

<%--//    String bulbStatus = (String) session.getAttribute("bulbStatus");--%>
<%--//    if (bulbStatus == null) {--%>
<%--//        bulbStatus = "off";--%>
<%--//        session.setAttribute("bulbStatus", bulbStatus);--%>
<%--//    }--%>

<%--%>--%>
<%--<div class="section_wrap">--%>
<%--  <nav>--%>
<%--    <ul>--%>
<%--      <%@include file="../views/include/nav1.jsp"%>--%>
<%--      <%@include file="../views/include/nav5.jsp"%>--%>
<%--      <li>--%>
<%--        <a>--%>
<%--          <img src="img/application.png" alt="">--%>
<%--        </a>--%>
<%--        <span>게시판</span>--%>
<%--      </li>--%>
<%--      <%@include file="../views/include/nav3.jsp"%>--%>
<%--      <%@include file="../views/include/nav4.jsp"%>--%>
<%--    </ul>--%>
<%--  </nav>--%>
<%--  <section class="shadow">--%>
<%--    <div class="blueBar">--%>
<%--      <span>게시판.html</span>--%>
<%--      <ul>--%>
<%--        <li class="shadow"><i class="fa-solid fa-window-minimize"></i></li>--%>
<%--        <li class="shadow"><i class="fa-regular fa-window-maximize"></i></li>--%>
<%--        <li class="shadow"><i class="fa-solid fa-x"></i></li>--%>
<%--      </ul>--%>
<%--    </div>--%>
<%--    <div class="content">--%>
<%--      <div class="content_wrap">--%>
<%--        <button id="buttonnnn">입력</button>--%>
<%--        <ul id="ulList">--%>
<%--        </ul>--%>
<%--        <p>~~ 게시판 ~~</p>--%>
<%--        <table>--%>
<%--          <tr>--%>
<%--            <th scope="col">번호</th>--%>
<%--            <th scope="col">제목</th>--%>
<%--            <th scope="col">글쓴이</th>--%>
<%--            <th scope="col">조회 수</th>--%>
<%--            <th scope="col">댓글 수</th>--%>
<%--            <th scope="col">등록 날짜</th>--%>
<%--          </tr>--%>
<%--          <c:forEach var="board" items="${list}">--%>
<%--            <tr>--%>
<%--              <td>${board.bno}</td>--%>
<%--              <td><a href="/boardForm?bno=<c:out value="${board.bno}"/>">${board.title}</a></td>--%>
<%--              <td>${board.writer}</td>--%>
<%--              <td>${board.view_cnt}</td>--%>
<%--              <td>${board.comment_cnt}</td>--%>
<%--              <td>${board.reg_date}</td>--%>
<%--            </tr>--%>
<%--          </c:forEach>--%>
<%--        </table>--%>
<%--        <br>--%>
<%--        <div class="paging">--%>
<%--          <c:if test="${ph.showPrev}">--%>
<%--            <a class="page" href="<c:url value='/table/list?curPage=${ph.naviStart-1}&pageSize=${ph.pageSize}'/>">&lt;</a>--%>
<%--          </c:if>--%>

<%--          <c:forEach var="i" begin="${ph.naviStart}" end="${ph.naviEnd}">--%>
<%--            <a href="<c:url value='/table/list?curPage=${i}&pageSize=${ph.pageSize}'/>">${i}</a>--%>
<%--          </c:forEach>--%>

<%--          <c:if test="${ph.showNext}">--%>
<%--            <a class="page" href="<c:url value='/table/list?curPage=${ph.naviEnd+1}&pageSize=${ph.pageSize}'/>">&gt;</a>--%>
<%--          </c:if>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </section>--%>
<%--  <footer>--%>
<%--    <%@include file="../views/include/footer1.jsp"%>--%>
<%--    <div class="opened_window_wraper">--%>
<%--      <ul>--%>
<%--        <li>--%>
<%--          <a href="board">--%>
<%--            <div class="opened_window chosen this">--%>
<%--              <img src="img/application.png" alt="">--%>
<%--              <span>게시판.html</span>--%>
<%--            </div>--%>
<%--          </a>--%>
<%--        </li>--%>
<%--        <li>--%>
<%--          <a href="cardGame">--%>
<%--            <div class="opened_window">--%>
<%--              <img src="img/cards.png" alt="">--%>
<%--              <span>카드_게임.html</span>--%>
<%--            </div>--%>
<%--          </a>--%>
<%--        </li>--%>
<%--        <li>--%>
<%--          <a href="piano">--%>
<%--            <div class="opened_window">--%>
<%--              <img src="img/music2.png" alt="">--%>
<%--              <span>피아노.html</span>--%>
<%--            </div>--%>
<%--          </a>--%>
<%--        </li>--%>
<%--        <li>--%>
<%--          <a>--%>
<%--            <div class="opened_window windowComcom">--%>
<%--              <img src="img/computer.png" alt="">--%>
<%--              <span>내 컴퓨터</span>--%>
<%--            </div>--%>
<%--          </a>--%>
<%--        </li>--%>
<%--      </ul>--%>
<%--    </div>--%>
<%--    <%@include file="../views/include/footer2.jsp"%>--%>
<%--  </footer>--%>
<%--</div>--%>
<%--<%@include file="../views/include/bulb.jsp"%>--%>

<%--<script src="js/jquery-3.6.4.min.js"></script>--%>
<%--<script src="js/window98.js"></script>--%>
<%--<script src="js/todoList.js"></script>--%>
<%--</body>--%>
<%--</html>--%>
