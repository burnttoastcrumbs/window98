//package com.test.controller;
//
//import com.test.domain.Board;
//import com.test.domain.PageHandler;
//import com.test.service.BoardService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//@Controller
//@RequestMapping("/table")
//public class BoardController {
//    @Autowired
//    BoardService boardService;
//
//    @GetMapping("/list")
//    public String list(@RequestParam(defaultValue ="1") Integer curPage, @RequestParam(defaultValue = "10") Integer pageSize, Model m) {
//        try {
//            System.out.println("curPage: " + curPage);
//
//            int totalCnt = boardService.getCount();
//            m.addAttribute("totalCnt", totalCnt);
//
//            if (curPage < 1) {
//                curPage = 1;
//            }
//
//            PageHandler pageHandler = new PageHandler(totalCnt, curPage, pageSize);
//            System.out.println(pageHandler);
//            m.addAttribute("ph", pageHandler);
//
//
//            Map<String, Integer> map = new HashMap<>();
//            map.put("offset", (curPage - 1) * pageSize);
//            map.put("pageSize", pageSize);
////            System.out.println(map);
//
//            List<Board> list = boardService.getPage(map);
//            m.addAttribute("list", list);
//        } catch (Exception e ) {
//            e.printStackTrace();
//        }
//
//
//        return "table";
//    }
//}