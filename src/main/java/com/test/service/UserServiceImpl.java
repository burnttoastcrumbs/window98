package com.test.service;

import com.test.dao.UserDao;
import com.test.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    //UserDao를 주입받음...

    @Override
    public int insertUser(User user) throws Exception {
        return userDao.insertUser(user);
    }

    @Override
    public User findLogin(String id, String password) throws Exception {
        return userDao.findLogin(id, password);
    }

    @Override
    public User welcomeName(String name) throws Exception {
        return userDao.welcomeName(name);
    }


}
