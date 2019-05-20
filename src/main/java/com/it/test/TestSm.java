package com.it.test;


import com.it.bean.User;
import com.it.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/application-service.xml")
public class TestSm {
    @Autowired
    private UserService userService;

    @Test
    public void test1(){

        User user = userService.findUser(1);

        System.out.println(user);

    }
}

