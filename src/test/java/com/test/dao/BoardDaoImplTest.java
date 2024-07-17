package com.test.dao;

import com.test.domain.Board;
import com.test.domain.PageHandler;
import com.test.domain.SearchCondition;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static java.time.LocalTime.now;
import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class BoardDaoImplTest {
    @Autowired
    private SqlSession session;
    @Autowired
//    @Qualifier("boardDaoImpl") // 혹은 "boardDao" 중 선택하여 사용
    BoardDaoImpl dao;


    //db 연결 됨?
    @Test
    public void test() throws Exception {
        System.out.println("BoardDao = " + dao);
    }


    @Test
    public void test2(){
        System.out.println(now());
    }


    private java.sql.Timestamp Timestamp;

    //    count 제대로 됨?
    @Test
    public void countTest() throws Exception {
        dao.deleteAll();
        assertTrue(dao.count()==0);

        Board board = new Board(1,"제목","내용","글쓴이",12,100, Timestamp);

        assertTrue(dao.boardInsert(board)==1);
        assertTrue(dao.count()==1);
        assertTrue(dao.count()==1);

        assertTrue(dao.boardInsert(board)==1);
        assertTrue(dao.count()==2);
    }

    //  다 지우는 거 됨?
    @Test
    public void deleteAllTest() throws Exception {
        dao.deleteAll();
        assertTrue(dao.count()==0);

        Board board = new Board(1,"제목","내용","글쓴이",12,100, Timestamp);

        assertTrue(dao.boardInsert(board)==1);
        assertTrue(dao.count()==1);
        assertTrue(dao.deleteAll()==1);
        assertTrue(dao.count()==0);

        board = new Board(1,"제목","내용","글쓴이",12,100, Timestamp);
        assertTrue(dao.boardInsert(board)==1);
        assertTrue(dao.boardInsert(board)==1);
        assertTrue(dao.deleteAll()==2);
        assertTrue(dao.count()==0);
    }

    //  원하는 거 하나씩 지우는거 됨? (기준 : 1.bno, 2.writer)
//  찾는 번호(bno)나 글쓴이(writer)와 조건이 맞아야 함.
//    1. bno(X), writer(O) -> X
//    2. bno(O), writer(X) -> X
//    3. bno(O), writer(O) -> O
    @Test
    public void deleteTest() throws Exception {
        dao.deleteAll();
        assertTrue(dao.count()==0);

        Board board = new Board(1,"제목","내용","글쓴이",12,100, Timestamp);
        assertTrue(dao.boardInsert(board)==1);
        Integer bno = dao.selectAll().get(0).getBno();  //가장 최근에 생성된 bno를 가져옴.
        assertTrue(dao.boardDelete(bno,board.getWriter())==1);
        assertTrue(dao.count()==0);

        assertTrue(dao.boardInsert(board)==1);
        bno = dao.selectAll().get(0).getBno();
        assertTrue(dao.boardDelete(bno,board.getWriter()+"222")==0);    //2. 이런 writer가 없으면 안 지워짐...0
        assertTrue(dao.count()==1);    //그래서 하나 남음

        assertTrue(dao.boardDelete(bno,board.getWriter())==1);
        assertTrue(dao.count()==0);

        assertTrue(dao.boardInsert(board)==1);
        bno = dao.selectAll().get(0).getBno();
        assertTrue(dao.boardDelete(bno+1, board.getWriter())==0);   //1. 이런 번호가 없기 때문에 안 지워짐...0
        assertTrue(dao.count()==1);    //그래서 하나 남음
    }


    //    글 제대로 등록 됨?
    @Test
    public void insertTest() throws Exception {
        dao.deleteAll();
        Board board = new Board(1,"제목","내용","글쓴이",12,100, Timestamp);
        assertTrue(dao.boardInsert(board)==1);

        board = new Board(1,"제목","내용","글쓴이",12,100, Timestamp);
        assertTrue(dao.boardInsert(board)==1);
        assertTrue(dao.count()==2);

        dao.deleteAll();

        board = new Board(1,"제목","내용","글쓴이",12,100, Timestamp);
        assertTrue(dao.boardInsert(board)==1);
        assertTrue(dao.count()==1);
    }


    //   모든 게시물을 선택할 수 있음? 지워지거나 추가되더라도?
    @Test
    public void selectAllTest() throws Exception {
        dao.deleteAll();
        assertTrue(dao.count()==0); //개수 0

        List<Board> list = dao.selectAll();
        assertTrue(list.size() == 0);   //리스트로 만들고 다 선택해서 리스트 사이즈 재도 0

        Board board = new Board(1,"제목","내용","글쓴이",12,100, Timestamp);
        assertTrue(dao.boardInsert(board)==1);

        list = dao.selectAll();
        assertTrue(list.size() == 1);

        assertTrue(dao.boardInsert(board)==1);
        list = dao.selectAll();
        assertTrue(list.size() == 2);
    }

    //  내가 원하는 게시물을 선택할 수 있음?(게시물 번호 bno로 찾는다.)
    @Test
    public void selectTest() throws Exception {
        dao.deleteAll();
        assertTrue(dao.count()==0);

        Board board = new Board(1,"제목","내용","글쓴이",0,0, null);
        assertTrue(dao.boardInsert(board)==1);

        Integer bno = dao.selectAll().get(0).getBno();
        System.out.println(bno);
        board.setBno(bno);
        System.out.println(board);
        Board board2 = dao.selectBnoBoard(bno);
        System.out.println(board2);
        assertTrue(board.equals(board2));
        // dto에 equals, hashcode 처리...
    }


    //    게시물 업데이트 잘 됨?(bno로 찾는다.)
    @Test
    public void updateTest() throws Exception {
        dao.deleteAll();

        Board board = new Board(1,"제목","내용","글쓴이",0,0, null);
        assertTrue(dao.boardInsert(board)==1);

        Integer bno = dao.selectAll().get(0).getBno();
//        System.out.println(bno);
        board.setBno(bno);
        board.setTitle("yes title");
        assertTrue(dao.boardUpdate(board)==1);
        System.out.println(board);

        Board board2 = dao.selectBnoBoard(bno);
        System.out.println(board2);
        assertTrue(board.equals(board2));

//      db 리셋함. 위 코드까지의 테스트는 통과됨
        dao.deleteAll();
        assertTrue(dao.count()==0);
    }


    @Test
    public void selectPage() throws Exception{
        int curPage =3;
        int pageSize=10;

        Map<String, Integer> map = new HashMap<>();
        map.put("offset", (curPage - 1) * pageSize);
        map.put("pageSize", pageSize);
        System.out.println(dao.selectPage(map));
    }

    @Test
    public void searchSelectPage() throws Exception{
        dao.deleteAll();

        for(int i = 1; i<=20; i++){
            Board board = new Board("title"+i, "asdfasdf", "asdf"+i);
            dao.boardInsert(board);

        }

        SearchCondition sc = new SearchCondition(1,10,"title2","T");
        List<Board> list = dao.searchSelectPage(sc);
        System.out.println("list" + list);
        assertTrue(list.size()==2 );

        sc = new SearchCondition(1,10,"asdf2","W");
        list = dao.searchSelectPage(sc);
        System.out.println("list" + list);
        assertTrue(list.size()==2 );
    }


    @Test
    public void searchResultCnt() throws Exception{
        dao.deleteAll();

        for(int i = 1; i<=220; i++){
            Board board = new Board("title"+i, "asdfasdf", "asdf"+i);
            dao.boardInsert(board);

        }

        SearchCondition sc = new SearchCondition(1,10,"title2","T");
        int cnt = dao.searchResultCnt(sc);
        assertTrue(cnt==2 );

        sc = new SearchCondition(1,10,"asdf2","W");
        cnt = dao.searchResultCnt(sc);
        assertTrue(cnt==2 );

    }

    @Test
    public void updateCommentCnt() throws Exception{
        dao.deleteAll();



    }

}