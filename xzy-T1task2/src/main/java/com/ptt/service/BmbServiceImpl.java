package com.ptt.service;

import com.ptt.dao.BmbMapper;
import com.ptt.pojo.Bmb;

import java.util.List;

public class BmbServiceImpl implements BmbService {


    private BmbMapper bmbMapper;

    public void setBmbMapper(BmbMapper bmbMapper) {
        this.bmbMapper = bmbMapper;
    }

    public int saveBmb(Bmb bmb) {
        return bmbMapper.saveBmb(bmb);
    }

    public int deleteBmbById(Integer id) {
        return bmbMapper.deleteBmbById(id);
    }

    public int updateBmb(Bmb bmb) {
        return bmbMapper.updateBmb(bmb);
    }

    public Bmb getBmbById(Integer id) {
        return bmbMapper.getBmbById(id);
    }

    public List<Bmb> queryAllBmb() {
        return bmbMapper.queryAllBmb();
    }
}

