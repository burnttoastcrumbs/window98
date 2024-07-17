package com.test.service;

import com.test.domain.User;

public interface UserService {

    public int insertUser(User user) throws Exception;

    User findLogin(String id, String password) throws Exception;
    //user객체를 반환

    User welcomeName(String name) throws Exception;
}