package com.yft233.service.impl;

import com.yft233.dao.UserDao;
import com.yft233.modle.User;
import com.yft233.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao dao;
    @Override
    public int addUser(User user) {
        int nums = dao.insertUser(user);
        return nums;
    }

    @Override
    public List<User> findUsers() {
        List<User> list = dao.selectUsers();
        return list;
    }

    @Override
    public boolean userLogin(String username,String password) {
        if (dao.selectUserByLogin(username,password) == 1)
            return true;
        return false;
    }
}
