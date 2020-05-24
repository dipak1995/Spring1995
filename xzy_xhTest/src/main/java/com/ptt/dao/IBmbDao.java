package com.ptt.dao;

import com.ptt.domain.Bmb;
import com.ptt.domain.QueryVo;

import java.util.List;

/**
 * 用户的持久层接口
 */

public interface IBmbDao {
    /**
     * 查询所有操作
     */
    List<Bmb> findAll();

    /**
     * 添加用户
     */
    int saveBmb(Bmb bmb);

    /**
     * 根据id删除用户
     */
    int deleteBmb(Integer bmb);

    /**
     * 修改用户
     */
    int updateBmb(Bmb bmb);

    /**
     * 根据id查询单个用户
     */
    Bmb getBmbById(Integer bmbId);

    /**
     * 根据姓名模糊查询多个用户
     */
    List<Bmb> findByName(String name);

    /**
     * 查询总用户总数
     */
    int countBmb();
    int saveOneBmb(Bmb bmb);

    /**
     * 根据查询条件模糊查询用户
     */
    List<Bmb> listBmbByVo(QueryVo vo);


}
