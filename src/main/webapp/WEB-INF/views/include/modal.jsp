<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<div class="modal_box shadow">
    <div class="blueBar modal">
        <span>내 컴퓨터</span>
        <ul>
<%--            <li class="shadow"><i class="fa-solid fa-window-minimize"></i></li>--%>
<%--            <li class="shadow"><i class="fa-regular fa-window-maximize"></i></li>--%>
            <li class="shadow cancel_btn">
                <i class="fa-solid fa-x"></i>
            </li>
        </ul>
    </div>
    <div class="content2">
        <div class="content2_wrap">

            <% if (isLoggedIn) { %>
            <p>내 정보</p>
            <p>아이디 : </p>
            <p>비밀번호 : </p>
            <p>이름 : <%= name %><span></span></p>
            <p>성별 : </p>
            <p>생년월일 : </p>
            <p>휴대전화 번호 : </p>
            <p>이메일 주소 : </p>
            <% } else { %>
            <p>만든 사람 정보</p>
            <p>이름 : 김도연<span></span></p>
            <p>휴대전화 번호 : 010-8866-6237</p>
            <p>이메일 주소 : mc1818wreck@naver.com</p>
            <% } %>


        </div>
    </div>
</div>