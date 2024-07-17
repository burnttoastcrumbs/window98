package com.test.controller;

import com.test.domain.User;
import com.test.service.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@SessionAttributes("id")
//세션에 아이디 저장
public class LoginController {

//    @PostMapping("/LoginController")
//    public String Login(
//            @RequestParam("id") String id,
//            @RequestParam("pwd") String password,
//            @RequestParam(name = "remember", required = false) String remember,
//            HttpSession session, //HttpSession session = request.getSession();대신
//            RedirectAttributes redirectAttributes,
//            HttpServletResponse response) {
//        if ("as".equals(id) && "12".equals(password)) {
//            session.setAttribute("id", id);
//
//            if (remember != null) {
//                Cookie idCookie = new Cookie("id", id);
//                idCookie.setMaxAge(60);
//                response.addCookie(idCookie);
//            }
//
//            return "redirect:/window98";
//        } else {
//            return "redirect:/login";
//        }
//    }

    @Autowired
    private UserServiceImpl userService;

    @PostMapping("/LoginController")
    public String login(
            @RequestParam("id") String id,
            @RequestParam("pwd") String password,
            @RequestParam(name = "remember", required = false) String remember,
            @RequestParam(name = "page", required = false) String page,
            HttpSession session,
            RedirectAttributes redirectAttributes,
            HttpServletResponse response) {
        try {
            User user = userService.findLogin(id, password);
            if (user != null) {
                session.setAttribute("id", id);
                //id에대한 세션 만들어주고...
                session.setAttribute("name", user.getName());
                //로그인에 성공한 사람의 이름을 userService에서 얻어옴.


                if (remember != null) {
                    Cookie idCookie = new Cookie("id", id);
                    idCookie.setMaxAge(60);
                    response.addCookie(idCookie);
                }

                if (page != null && !page.isEmpty()) {
                    return "redirect:/" + page;
                } else {
                    return "redirect:/window98";
                }
            } else {
                return "redirect:/login";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/login";
        }
    }
}
