package com.it.contorller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

public class TestServlet extends HttpServlet {


    @Override
    public void init() throws ServletException {

        System.out.println("test servlet init method!!");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doGet(req, resp);

        Map<String, String[]> map = req.getParameterMap();

        req.getRequestDispatcher("").forward(req,resp);


        resp.sendRedirect("http://www.baidu.com");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doPost(req, resp);

    }
}
