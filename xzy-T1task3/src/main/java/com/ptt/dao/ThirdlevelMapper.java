package com.ptt.dao;

import com.ptt.pojo.Thirdlevel;

import java.util.List;

public interface ThirdlevelMapper {

    //增加一个一级标题
    Integer addThirdlevel(Thirdlevel thirdlevel);

    //根据id删除一个
    Integer deleteThirdlevelById(Integer id);


    //更新 回复一个
    boolean updateThirdlevel(Thirdlevel thirdlevel);

    //根据id查询,返回一个
    Thirdlevel getThirdlevelById(Integer id);

    //查询全部,返回list集合
    List<Thirdlevel> queryAllThirdlevel();


}

