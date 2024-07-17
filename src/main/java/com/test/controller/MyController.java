package com.test.controller;

import com.test.domain.*;
import com.test.service.BoardServiceImpl;
import com.test.service.SpaoServiceImpl;
import com.test.service.UserServiceImpl;
//import com.test.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class MyController {
    @Autowired
    UserServiceImpl service;
    //user crud에 쓸거임
    @Autowired
    BoardServiceImpl boardService;
    //board띄우는데 쓸거임
    @Autowired
    SpaoServiceImpl spaoService;
    //팀플 연습용. 스파오 메인페이지 띄우는데 쓸거임.


//    @GetMapping("/")
//    public String index() {
//        return "index";
//    }

    @GetMapping("/window98")
    public String window98() {
        return "window98";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/register")
    public String register() {
        return "register";
    }

    @GetMapping("/todoList")
    public String todoList() {
        return "todoList";
    }

    @GetMapping("/cardGame")
    public String cardGame() {
        return "cardGame";
    }

    @GetMapping("/piano")
    public String piano() {
        return "piano";
    }

    @GetMapping("/boardWrite")
    public String boardWrite() {
        return "boardWrite";
    }

    @RequestMapping("/userInsert")

    public String userInsert(User user) throws Exception {
        service.insertUser(user);
        return "redirect:/login";

    }

//    @RequestMapping("/board")
//
//    public String board(Model model) {
//        try {
//            List<Board> boardList; // 게시판 목록을 가져오는 메서드 호출
//            boardList = boardService.getList();
//            model.addAttribute("boardList", boardList); // 가져온 목록을 모델에 추가하여 뷰에 전달
//        } catch (Exception e) {
//            e.printStackTrace();
//            return "error";
//        }
//        return "board";
//    }

    @GetMapping("/board")
    public String board(SearchCondition sc, Model m) {
        try {

            int totalCnt = boardService.getSearchResultCnt(sc);
            m.addAttribute("totalCnt", totalCnt);

//            if (curPage < 1) {
//                curPage = 1;
//            }

            PageHandler pageHandler = new PageHandler(totalCnt, sc);
            m.addAttribute("ph", pageHandler);


//            Map<String, Integer> map = new HashMap<>();
//            map.put("offset", (curPage - 1) * pageSize);
//            map.put("pageSize", pageSize);
//            System.out.println(map);

            List<Board> list = boardService.getSearchResultPage(sc);
            m.addAttribute("list", list);
            System.out.println(m);
        } catch (Exception e ) {
            e.printStackTrace();
        }
        return "board";
    }



            @RequestMapping("/boardForm")
    public String boardForm(Integer bno, Model model) {
        try {
            Board board = boardService.read(bno);
            model.addAttribute("board", board);
            System.out.println(model);
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("errorMessage", "게시글 정보를 가져오는 데 실패했습니다.");
        }
        return "boardForm";
    }



    @PostMapping("/boardInsert")
    public String boardInsert(Board board, Model m) {
        try {
            if (boardService.register(board) != 1)
                throw new Exception("Write failed.");
            return "redirect:/board";
        } catch (Exception e) {
            e.printStackTrace();
            m.addAttribute(board);
            m.addAttribute("mode", "new");
            System.out.println(m);
            return "redirect:/board";
        }
    }

    @PostMapping("/boardDelete")
    public String boardDelete(Integer bno, HttpSession session) {
        String writer = (String)session.getAttribute("id");

        try {
            if(boardService.remove(bno, writer)!=1)
                throw new Exception("Delete failed." + bno);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/board";
    }


    @PostMapping("/boardUpdate")
    public String boardUpdate(Board board, Model m, HttpSession session) {

        String writer = (String)session.getAttribute("id");
        board.setWriter(writer);

        try {
            if (boardService.modify(board)!= 1)
                throw new Exception("Modify failed.");
            return "redirect:/board";
        } catch (Exception e) {
            e.printStackTrace();
            m.addAttribute(board);
            m.addAttribute("msg", "MOD_ERR");
            return "board";
        }
    }






    @RequestMapping("/spao_main")
//    @RequestMapping("/")

    public String spao_main(Model model) {
        try {
            List<Spao> boardList;
            List<Spao> boardList2;
            List<Spao> boardList3;

            boardList = spaoService.womanTap();
            boardList2 = spaoService.manTap();
            boardList3 = spaoService.uniTap();

            model.addAttribute("boardList", boardList);
            model.addAttribute("boardList2", boardList2);
            model.addAttribute("boardList3", boardList3);
        } catch (Exception e) {
            // 예외 처리
            e.printStackTrace();
            return "error";
        }
        return "spao_main";
//        return "index";
    }



    @RequestMapping("/item")

    public String item() {
        return "itemRegisterForm";
    }


    @RequestMapping("/main")

    public String main() {
        return "main";
    }

    @RequestMapping("/itemList")

    public String itemList() {
        return "itemList";
    }


    @RequestMapping("/itemRegister")

    public String itemRegister() {
        return "itemRegister";
    }

    @RequestMapping("/itemForm")

    public String itemForm() {
        return "itemForm";
    }

    @RequestMapping("/itemStock")

    public String itemStock() {
        return "itemStock";
    }




}