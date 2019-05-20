package com.it.contorller;


import com.it.bean.User;
import com.it.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.PrintStream;


@Controller
@RequestMapping("user")
public class UserContorller {

    @Autowired
    private UserService userService;


    @RequestMapping("info")
    public String getuserinfo(){

        System.out.println("user get id = 1");


        User user = userService.findUser(1);

        if (user == null) {
            System.out.println("没有获取到user");
        }else {
            System.out.println("user = " + user);
        }
        return "hello";
    }
}
