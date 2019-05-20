package com.it.contorller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 后台管理页面对应的controller
 */
@Controller
@RequestMapping("index")
public class IndexController {

    @RequestMapping
    public String init(){


        return "system/index";
    }




}
