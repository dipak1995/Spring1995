package com.ptt.dao;

import com.ptt.pojo.Secondlevel;

import java.util.List;

public interface SecondlevelMapper {

    //增加一个一级标题
    Integer addSecondlevel(Secondlevel secondlevel);

    //根据id删除一个
    Integer deleteSecondlevelById(Integer id);


    //更新 回复一个
    boolean updateSecondlevel(Secondlevel secondlevel);

    //根据id查询,返回一个
    Secondlevel getSecondlevelById(Integer id);

    //查询全部,返回list集合
    List<Secondlevel> queryAllSecondlevel();


}
