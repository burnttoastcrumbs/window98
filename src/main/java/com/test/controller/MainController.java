package com.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Arrays;

@Controller
public class MainController {

    //aaa ac를 사용하려고 참조를 얻음.(얘는 iv임. 상수(read-only), thread-safe)
    @Autowired
    ApplicationContext ac;
    @RequestMapping("/")
    public String main(HttpServletRequest request, HttpSession session){ //요청받을일이 필요하면 HttpServletRequest, 세션써야하면 HttpSession을 매개변수로 쓰면 됨.
        //ac를 사용하고 싶을 때는?
        //이미 만들어져있음....생성하는게아니라, 참조를얻어야함.aaa
        System.out.println("ac = " + ac); // appServlet-servlet이 호츌돰. ac는 2개였음. root, servlet. 둘중 servlet이 호출됨

        ApplicationContext rootAc = ac.getParent();
        System.out.println("rootAc = " + rootAc); //이러면 rootAc 불러짐.
        System.out.println(Arrays.toString(ac.getBeanDefinitionNames())); //빈들? 애너테이션?들이 엄청 많이 나옴...배열에 담겨서



        System.out.println("됨?"); //이게 뜨면 적어도 맵핑은 됐다는 것. 오류 뜨면 이런 방식으로 해결. 1.등록되었는가? 2.연결이 되었는가?
        return "index"; //web-inf/views/index.jsp
    }
}
