package com.yft233.dao;

import com.yft233.modle.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {

    int insertUser(User user);
    List<User> selectUsers();
    int selectUserByLogin(@Param("username") String username, @Param("password") String password);

}
