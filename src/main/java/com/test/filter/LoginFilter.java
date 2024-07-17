package com.test.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig config) throws ServletException {

    }
//	필터가 초기화될 때 호출

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpSession session = httpRequest.getSession(false); //현재 세션을 가져옴.

        boolean login = false;
        if(session!=null) {
            if(session.getAttribute("id")!=null) {
                login =true;
            }//세션이 존재하면 로그인이 되어있다는 것.
        }
        if(login) {
            chain.doFilter(httpRequest, response);
            //로그인이 되어있으면 계속 요청을 진행함.
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/login");
            dispatcher.forward(request,response);
            //로그인 상태가 아니면 login.jsp페이지로 돌아감.
        }
    }

    @Override
    public void destroy() {
    }
//	필터가 소멸될 때 호출
}
