package com.test.service;

import com.test.dao.BoardDao;
import com.test.dao.BoardDaoImpl;
import com.test.dao.CommentDao;
import com.test.dao.CommentDaoImpl;
import com.test.domain.Board;
import com.test.domain.CommentDto;
import jdk.jfr.Timestamp;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class CommentServiceImplTest {
    @Autowired
    CommentService commentService;
    @Autowired
    CommentDaoImpl commentDao;
    @Autowired
    BoardDaoImpl boardDao;

    @Test
    public void remove() throws Exception {
        boardDao.deleteAll();

        Board boardDto = new Board("hello", "hello", "asdf",0,0,null);
        assertTrue(boardDao.boardInsert(boardDto)==1);
        Integer bno = boardDao.selectAll().get(0).getBno();
        System.out.println("bno = " + bno);
        System.out.println(boardDto);

        commentDao.deleteAll(bno);
        CommentDto commentDto = new CommentDto(bno,0,"hi","qwer");

        assertTrue(boardDao.selectBnoBoard(bno).getComment_cnt() == 0);
        assertTrue(commentService.write(commentDto)==1);
        assertTrue(commentService.write(commentDto)==1);
        assertTrue(commentService.write(commentDto)==1);
//        assertTrue(boardDao.selectBnoBoard(bno).getComment_cnt() == 3);
        System.out.println(boardDao.selectBnoBoard(bno));
//
        Integer cno = commentDao.selectAll(bno).get(0).getCno();

        // 일부러 예외를 발생시키고 Tx가 취소되는지 확인해야.
        int rowCnt = commentService.remove(cno, bno, commentDto.getCommenter());
        assertTrue(rowCnt==1);
        assertTrue(boardDao.selectBnoBoard(bno).getComment_cnt() == 0);
    }

    @Test
    public void write() throws  Exception {
        boardDao.deleteAll();

        Board boardDto = new Board("hello", "hello", "asdf");
        assertTrue(boardDao.boardInsert(boardDto) == 1);
        Integer bno = boardDao.selectAll().get(0).getBno();
        System.out.println("bno = " + bno);
        System.out.println("boardDto = " + boardDto);

        commentDao.deleteAll(bno);
        CommentDto commentDto = new CommentDto(bno,0,"hi","qwer");

        assertTrue(boardDao.selectBnoBoard(bno).getComment_cnt() == 0);
        assertTrue(commentService.write(commentDto)==1);

        Integer cno = commentDao.selectAll(bno).get(0).getCno();
        System.out.println(boardDao.selectBnoBoard(bno).getComment_cnt());
//        assertTrue(boardDao.selectBnoBoard(bno).getComment_cnt() == 1);
    }
}