package com.test.dao;

import com.test.domain.Spao;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class SpaoDaoImpl implements SpaoDao{
    @Autowired
    private SqlSession session;
    private static String namespace = "com.test.SpaoMapper.";
    @Override
    public List<Spao> womanTap() throws Exception {
        return session.selectList(namespace+"womanTap");
    }
    @Override
    public List<Spao> manTap() throws Exception {
        return session.selectList(namespace+"manTap");
    }
    @Override
    public List<Spao> uniTap() throws Exception {
        return session.selectList(namespace+"uniTap");
    }
}
