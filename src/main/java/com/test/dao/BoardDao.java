package com.test.dao;

import com.test.domain.Board;
import com.test.domain.SearchCondition;

import java.util.List;
import java.util.Map;

public interface BoardDao {
    List<Board> selectBoardAll() throws Exception;
    int boardDelete(Integer bno, String writer) throws Exception;
    int boardInsert(Board board) throws Exception;
    Board selectBnoBoard(Integer bno) throws Exception;
    int boardUpdate(Board board) throws Exception;
    List<Board> selectPage(Map map) throws Exception;

    int searchResultCnt(SearchCondition sc) throws Exception;
    List<Board> searchSelectPage(SearchCondition sc) throws Exception;
//    ================테스트 코드용==================
    int deleteAll() throws Exception;
    int count() throws Exception;
    List<Board> selectAll() throws Exception;

    int updateCommentCnt(Integer bno, int cnt);
}
