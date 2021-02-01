package com.yft233.service;

import com.yft233.modle.User;

import java.util.List;

public interface UserService {
    int addUser(User user);
    List<User> findUsers();
    boolean userLogin(String username,String password);
}
