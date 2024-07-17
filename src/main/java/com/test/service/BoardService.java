package com.test.service;

import com.test.domain.Board;
import com.test.domain.SearchCondition;

import java.util.List;
import java.util.Map;


public interface BoardService {

//    글 개수 세기
    int getCount() throws Exception;

//    글 삭제
    int remove(Integer bno, String writer) throws Exception;
//    글 다 삭제
    int removeAll() throws Exception;
//    글 등록
    int register(Board board) throws Exception;
//    글 모두 들고 와서 board에 띄우기
    List<Board> getList() throws Exception;
//    특정 글 들고 와서(bno로 구별) boardForm에 띄우기
    Board read(Integer bno) throws Exception;
//    글 수정
    int modify(Board board) throws Exception;
//    각 글의 bno들고오기
    List<Board> selectAll() throws Exception;
    List<Board> getPage(Map map) throws Exception;

    public List<Board> getSearchResultPage(SearchCondition sc) throws Exception;

    public int getSearchResultCnt(SearchCondition sc) throws Exception;
}
