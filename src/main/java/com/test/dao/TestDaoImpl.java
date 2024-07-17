package com.test.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TestDaoImpl implements TestDao{

    @Autowired
    SqlSession session;

    private static final String namespace = "com.test.dao.TestDao.";


    @Override
    public String test() throws Exception {
        return session.selectOne(namespace + "test");
    }
}
