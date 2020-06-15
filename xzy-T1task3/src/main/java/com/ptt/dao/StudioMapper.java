package com.ptt.dao;

import com.ptt.pojo.Studio;

import java.util.List;

public interface StudioMapper {

    //增加一个一级标题
    Integer addStudio(Studio studio);

    //根据id删除一个
    Integer deleteStudioById(Integer id);


    //更新 回复一个
    boolean updateStudio(Studio studio);

    //根据id查询,返回一个
    Studio getStudioById(Integer id);

    //查询全部,返回list集合
    List<Studio> queryAllStudio();


}
