package com.it.service.impl;

import com.it.bean.User;
import com.it.mapper.UserMapper;
import com.it.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User findUser(int id) {

//        SqlSession sqlSession = sessionFactory.openSession();
//
//        UserMapper mapper = sqlSession.getMapper(UserMapper.class);

        User user = userMapper.finduser(id);

        System.out.println(user);

        return user;
    }
}
