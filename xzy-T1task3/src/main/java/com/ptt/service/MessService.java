package com.ptt.service;

import com.ptt.pojo.Mess;

import java.util.List;

public interface MessService {
    //增加一个留言Mess
    Integer addMess(Mess mess);

    //根据id删除一个Mess
    Integer deleteMessById(Integer id);


    //更新 回复一个留言
    boolean updateMess(Mess mess);

    //根据id查询,返回一个Mess
    Mess getMessById(Integer id);

    //查询全部Mess,返回list集合
    List<Mess> queryAllMess();

}
