package com.ptt.controller;

import com.ptt.pojo.Student;
import com.ptt.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/xzy")
public class StudentController {
    @Resource
    private StudentService service;

    //
    @RequestMapping("/t10")
    public String queryStudent(Model model){
        //参数检查， 简单的数据处理
        List<Student> students = service.findStudents();

        model.addAttribute("students",students);

        return "myView1";
    }

}
