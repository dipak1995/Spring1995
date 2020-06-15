package com.ptt.dao;

import com.ptt.pojo.Model;
import com.ptt.pojo.Role;

import java.util.List;

public interface ModelMapper {

    //增加一个一级标题
    Integer addModel(Model model);

    //根据id删除一个
    Integer deleteModelById(Integer id);


    //更新 回复一个
    boolean updateModel(Model model);

    //根据id查询,返回一个
    Model getModelById(Integer id);

    //查询全部,返回list集合
    List<Model> queryAllModel();

}
