package com.ptt.service;

import com.ptt.pojo.Firstlevel;

import java.util.List;

public interface FirstlevelService {

    //增加一个一级标题
    Integer addFirstlevel(Firstlevel firstlevel);

    //根据id删除一个
    Integer deleteFirstlevelById(Integer id);


    //更新 回复一个
    boolean updateFirstlevel(Firstlevel firstlevel);

    //根据id查询,返回一个
    Firstlevel getFirstlevelById(Integer id);

    //查询全部,返回list集合
    List<Firstlevel> queryAllFirstlevel();


}
