package com.ptt.dao;


import com.ptt.pojo.Student;

import java.util.List;

public interface StudentDao {

    List<Student> selectStudents();

}
