package com.ptt.dao;

import com.ptt.domain.Bmb;

import java.util.List;

public interface IBmbDao {
    /**
     * 查询所有账户
     */
    List<Bmb> listAllBmbs();

    /**
     * 根据id查询
     */
    Bmb getBmbById(Integer BmbId);

    /**
     * 保存
     */
    void saveBmb(Bmb bmb);

    /**
     * 更新
     */
    void updateBmb(Bmb bmb);

    /**
     * 删除
     */
    void deleteBmb(Integer bmbId);

}
