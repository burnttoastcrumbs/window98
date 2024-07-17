package com.test.service;

import com.test.domain.Board;
import com.test.domain.PageHandler;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class BoardServiceImplTest {
    @Autowired
    BoardServiceImpl boardService;

    //db 연결됨?
    @Test
    public void yehyyyy(){
        System.out.println(boardService);
    }


    private java.sql.Timestamp Timestamp;

    //    글 등록
    @Test
    public void write() throws Exception {
        boardService.removeAll();
        assertTrue(boardService.getCount()==0);

        Board board = new Board(1,"제목","내용","글쓴이",12,100, Timestamp);
        boardService.register(board);
        assertTrue(boardService.getCount()==1);

        boardService.register(board);
        assertTrue(boardService.getCount()==2);

        boardService.register(board);
        boardService.register(board);
        assertTrue(boardService.getCount()==4);

    }


    //    글 삭제
    //  원하는 거 하나씩 지우는거 됨? (기준 : 1.bno, 2.writer)
//  찾는 번호(bno)나 글쓴이(writer)와 조건이 맞아야 함.
//    1. bno(X), writer(O) -> X
//    2. bno(O), writer(X) -> X
//    3. bno(O), writer(O) -> O
    @Test
    public void remove() throws Exception {
        boardService.removeAll();
        assertTrue(boardService.getCount()==0);

        Board board = new Board(1,"제목","내용","글쓴이",12,100, Timestamp);
        boardService.register(board);
        assertTrue(boardService.getCount()==1);
        Integer bno = boardService.selectAll().get(0).getBno();  //가장 최근에 생성된 bno를 가져옴.
        assertTrue(boardService.remove(bno,board.getWriter())==1);
        assertTrue(boardService.getCount()==0);     //정상적으로 잘 지워짐

        boardService.register(board);
        assertTrue(boardService.getCount()==1);
        bno = boardService.selectAll().get(0).getBno();
        assertTrue(boardService.remove(bno+1,board.getWriter())==0);    //1. 이런 번호가 없기 때문에 안 지워짐...0
        assertTrue(boardService.getCount()==1);

        bno = boardService.selectAll().get(0).getBno();
        assertTrue(boardService.remove(bno,board.getWriter()+"tv")==0);    //2. 이런 writer가 없으면 안 지워짐...0
        assertTrue(boardService.getCount()==1);
    }



    //    특정 글 들고 와서(bno로 구별) boardForm에 띄우기
    @Test
    public void read() throws Exception {
        boardService.removeAll();
        assertTrue(boardService.getCount()==0);

        Board board = new Board(1,"제목","내용","글쓴이",0,0, null);
        boardService.register(board);
        assertTrue(boardService.getCount()==1);

        Integer bno = boardService.selectAll().get(0).getBno();
        board.setBno(bno);
        Board board2 = boardService.read(bno);
        System.out.println(board);
        System.out.println(board2);
        assertTrue(board.equals(board2));

    }

    //    글 '모두' 들고 와서 board에 띄우기.
//    중간에 추가되거나 지워져도 제대로 다 들고 옴?
    @Test
    public void getList() throws Exception {
        boardService.removeAll();
        assertTrue(boardService.getCount()==0);

        List<Board> list = boardService.selectAll();
        assertTrue(list.size() == 0);

        Board board = new Board(1,"제목","내용","글쓴이",12,100, Timestamp);
        boardService.register(board);
        list = boardService.selectAll();
        assertTrue(list.size() == 1);

        boardService.register(board);
        boardService.register(board);
        boardService.register(board);

        Integer bno = boardService.selectAll().get(0).getBno();
        boardService.remove(bno,board.getWriter());

        list = boardService.selectAll();
        assertTrue(list.size() == 3);
    }

    //    글 수정
    @Test
    public void edit() throws Exception {
        boardService.removeAll();
        assertTrue(boardService.getCount()==0);

        Board board = new Board(1,"제목","내용","글쓴이",0,0, null);
        boardService.register(board);

        Integer bno = boardService.selectAll().get(0).getBno();
        board.setBno(bno);
        board.setTitle("ㅜㅐ title");
        board.setContent("dfd");
        boardService.modify(board);

        Board board2 = boardService.read(bno);
        assertTrue(board.equals(board2));

        System.out.println(board2);

    }

//    @Test
//    public void selectPage() throws Exception{
//        int curPage =13;
//        int pageSize=10;
//
//        Map<String, Integer> map = new HashMap<>();
//        map.put("offset", (curPage - 1) * pageSize);
//        map.put("pageSize", pageSize);
//        System.out.println(boardService.getPage(map));
//
//
//        PageHandler ph = new PageHandler(250,13,10);
//        System.out.println(ph.getNaviStart());
//        System.out.println(ph.getNaviEnd());
//    }

}