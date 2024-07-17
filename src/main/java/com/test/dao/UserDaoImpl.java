package com.test.dao;

import com.test.domain.User;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.HashMap;
import java.util.Map;

//@Component
@Repository
//@Repository 붙이는거 맞는지 모르겠지만, @Repository 애노테이션을 추가하면 스프링이 해당 클래스를 빈으로 등록하고, @Autowired 애노테이션으로 주입할 수 있게 됩니다. 래.
public class UserDaoImpl implements UserDao {

    private static final String NAMESPACE = "com.test.dao.UserDao";


//    @Autowired
//    DataSource ds;
//    //DataSource : DB 연결 관리 인터페이스임.

    @Autowired
    private SqlSessionTemplate sqlSession;
//    @Autowired
//    DataSource ds; 대신 씀

//    @Override
//    public User selectUser(String id) throws Exception {
//        return null;
//    }

    @Override
    public int deleteUser(String id) throws Exception {
        return sqlSession.delete(NAMESPACE + ".deleteUser", id);
    }

    @Override
    public int insertUser(User user) throws Exception {
        return sqlSession.insert(NAMESPACE + ".insertUser", user);
    }

    @Override
    public int updateUser(User user) throws Exception {
        return 0;
    }

    @Override
    public int count() throws Exception {
        return sqlSession.selectOne(NAMESPACE + ".count");
    }

    @Override
    public void deleteAll() throws Exception {
        try (Connection conn = sqlSession.getConnection();)
        {
            String sql = "DELETE FROM user";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.executeUpdate();
        }
    }


    @Override
    public User findLogin(String id, String pwd) throws Exception {
        Map<String, String> map = new HashMap<>();
        map.put("id", id);
        map.put("pwd", pwd);
        return sqlSession.selectOne(NAMESPACE + ".findLogin", map);
    }

    @Override
    public User welcomeName(String name) throws Exception {
        return sqlSession.selectOne(NAMESPACE + ".welcomeName", name);
    }




}