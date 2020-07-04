package com.ptt.service;

import com.ptt.dao.BmbMapper;
import com.ptt.pojo.Bmb;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BmbServiceImpl implements BmbService {

    @Resource
    private BmbMapper bmbMapper;


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

