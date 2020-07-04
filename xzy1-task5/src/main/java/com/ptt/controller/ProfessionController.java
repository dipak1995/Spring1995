package com.ptt.controller;

import com.ptt.pojo.Profession;
import com.ptt.service.ProfessionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("xzy")
public class ProfessionController {

    @Resource
    private ProfessionService service;

    //
    @RequestMapping("/t11")
    public String queryStudent(Model model)throws Exception{
        //参数检查， 简单的数据处理
        List<Profession> professions = service.selectProfessions();

        model.addAttribute("professions",professions);

        return "myView2";
    }
}
