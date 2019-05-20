package com.it.contorller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ad")
public class AdController {


    @RequestMapping
    public String adList(){

        String name = "hhee";


        return "content/adList";
    }


    @RequestMapping("adAdd")
    public String adAdd(){

        return "content/adAdd";
    }


    @RequestMapping("adModify")
    public String adModify(){

        return "content/adModify";
    }
}
