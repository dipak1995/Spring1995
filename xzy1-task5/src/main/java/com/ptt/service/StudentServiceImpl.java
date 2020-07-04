package com.ptt.service;

import com.ptt.dao.StudentDao;
import com.ptt.pojo.Student;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {
    //引用类型自动注入@Autowired, @Resource
    @Resource
    private StudentDao studentDao;


    @Override
    public List<Student> findStudents() {
        return studentDao.selectStudents();
    }
}
