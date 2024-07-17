package com.test.dao;

import com.test.domain.Board;
import com.test.domain.SearchCondition;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class BoardDaoImpl implements BoardDao {

    @Autowired
    private SqlSession session;
    private static String namespace = "com.test.BoardMapper.";


    @Override
    public List<Board> selectBoardAll() throws Exception {
        return session.selectList(namespace+"selectBoardAll");
    }

    @Override
    public int boardDelete(Integer bno, String writer) throws Exception {
        Map map = new HashMap();
        map.put("bno", bno);
        map.put("writer", writer);
        return session.delete(namespace+"boardDelete", map);
    }

    @Override
    public int boardInsert(Board board) throws Exception {
        return session.insert(namespace + "boardInsert", board);
    }

    @Override
    public Board selectBnoBoard(Integer bno) throws Exception {
        return session.selectOne(namespace + "selectBnoBoard", bno);
    }

    @Override
    public int boardUpdate(Board board) throws Exception {
        return session.update(namespace+"boardUpdate", board);
    }

    @Override
    public List<Board> selectPage(Map map) throws Exception {
        return session.selectList(namespace+"selectPage", map);
    }

    @Override
    public int deleteAll() throws Exception {
        return session.delete(namespace+"deleteAll");
    }

    @Override
    public int count() throws Exception {
        return session.selectOne(namespace+"count");
    }

    @Override
    public List<Board> selectAll() throws Exception {
        return session.selectList(namespace+"selectAll");
    }

    @Override
    public int updateCommentCnt(Integer bno, int cnt) {
        Map map = new HashMap();
        map.put("cnt",cnt);
        map.put("bno",bno);
        return session.update(namespace + "updateCommentCnt",map);
    }

    @Override
    public int searchResultCnt(SearchCondition sc) throws Exception {
        System.out.println("sc in searchResultCnt() = " + sc);
        System.out.println("session = " + session);
        return session.selectOne(namespace+"searchResultCnt", sc);
    }

    @Override
    public List<Board> searchSelectPage(SearchCondition sc) throws Exception {
        return session.selectList(namespace+"searchSelectPage", sc);
    }
}
