package com.ptt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {


    @RequestMapping("/test1")
    public String testView1(Model model) {

        return "myView1"; //这里的myView为layout.xml中配置的视图名称
    }

    @RequestMapping("/test2")
    public String testView(Model model) {
        return "myView2"; //这里的myView为layout.xml中配置的视图名称
    }

}
