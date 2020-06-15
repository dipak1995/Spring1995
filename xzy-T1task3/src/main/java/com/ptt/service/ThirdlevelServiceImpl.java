package com.ptt.service;

import com.ptt.dao.ThirdlevelMapper;
import com.ptt.pojo.Thirdlevel;

import java.util.List;

public class ThirdlevelServiceImpl implements ThirdlevelService {

    private ThirdlevelMapper thirdlevelMapper;

    public void setThirdlevelMapper(ThirdlevelMapper thirdlevelMapper) {
        this.thirdlevelMapper = thirdlevelMapper;
    }

    @Override
    public Integer addThirdlevel(Thirdlevel thirdlevel) {
        thirdlevelMapper.addThirdlevel(thirdlevel);
        return thirdlevel.getSId();
    }

    @Override
    public Integer deleteThirdlevelById(Integer id) {
        return thirdlevelMapper.deleteThirdlevelById(id);
    }

    @Override
    public boolean updateThirdlevel(Thirdlevel thirdlevel) {
        return thirdlevelMapper.updateThirdlevel(thirdlevel);
    }

    @Override
    public Thirdlevel getThirdlevelById(Integer id) {
        return thirdlevelMapper.getThirdlevelById(id);
    }

    @Override
    public List<Thirdlevel> queryAllThirdlevel() {
        return thirdlevelMapper.queryAllThirdlevel();
    }
}
