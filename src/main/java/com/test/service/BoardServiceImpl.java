package com.test.service;

import com.test.dao.BoardDao;
import com.test.domain.Board;
import com.test.domain.SearchCondition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class BoardServiceImpl implements BoardService{
    @Autowired
    BoardDao boardDao;
    @Override
    public List<Board> getList() throws Exception {
        return boardDao.selectBoardAll();
    }

    @Override
    public Board read(Integer bno) throws Exception {
        Board board = boardDao.selectBnoBoard(bno);
        return board;
    }

    @Override
    public int remove(Integer bno, String writer) throws Exception {
        return boardDao.boardDelete(bno, writer);
    }

    @Override
    public int removeAll() throws Exception {
        return boardDao.deleteAll();
    }


    @Override
    public int register(Board board) throws Exception {
        return boardDao.boardInsert(board);
    }

    @Override
    public int modify(Board board) throws Exception {
        return boardDao.boardUpdate(board);
    }

    @Override
    public List<Board> selectAll() throws Exception {
        return boardDao.selectAll();
    }

    @Override
    public List<Board> getPage(Map map) throws Exception {
        return boardDao.selectPage(map);
    }

    @Override
    public int getCount() throws Exception {
        return boardDao.count();
    }

    @Override
    public List<Board> getSearchResultPage(SearchCondition sc) throws Exception {
        return boardDao.searchSelectPage(sc);
    }

    @Override
    public int getSearchResultCnt(SearchCondition sc) throws Exception {
        return boardDao.searchResultCnt(sc);
    }
}
