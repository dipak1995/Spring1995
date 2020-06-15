package com.ptt.dao;

import com.ptt.pojo.Banner;

import java.util.List;

public interface BannerMapper {

    //增加一个一级标题
    Integer addBanner(Banner banner);

    //根据id删除一个
    Integer deleteBannerById(Integer id);


    //更新 回复一个
    boolean updateBanner(Banner banner);

    //根据id查询,返回一个
    Banner getBannerById(Integer id);

    //查询全部,返回list集合
    List<Banner> queryAllBanner();


}
