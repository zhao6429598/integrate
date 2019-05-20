package com.it.contorller;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.it.bean.Ad;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController   //等同于  responsebody + controller
@RequestMapping("api")
public class ApiController {



    @RequestMapping(value = "homead", method = RequestMethod.GET)
    public List<Ad> homead() {

        try {
            ObjectMapper objectMapper = new ObjectMapper();
        } catch (Exception e) {
            e.printStackTrace();


        }

        return null;
    }


}
