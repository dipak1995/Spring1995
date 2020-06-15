package com.ptt.service;

import com.ptt.dao.SecondlevelMapper;
import com.ptt.pojo.Secondlevel;

import java.util.List;

public class SecondlevelServiceImpl implements SecondlevelService {

    private SecondlevelMapper secondlevelMapper;

    public void setSecondlevelMapper(SecondlevelMapper secondlevelMapper) {
        this.secondlevelMapper = secondlevelMapper;
    }

    @Override
    public Integer addSecondlevel(Secondlevel secondlevel) {
        secondlevelMapper.addSecondlevel(secondlevel);
        return secondlevel.getId();
    }

    @Override
    public Integer deleteSecondlevelById(Integer id) {
        return secondlevelMapper.deleteSecondlevelById(id);
    }

    @Override
    public boolean updateSecondlevel(Secondlevel secondlevel) {
        return secondlevelMapper.updateSecondlevel(secondlevel);
    }

    @Override
    public Secondlevel getSecondlevelById(Integer id) {
        return secondlevelMapper.getSecondlevelById(id);
    }

    @Override
    public List<Secondlevel> queryAllSecondlevel() {
        return secondlevelMapper.queryAllSecondlevel();
    }
}
