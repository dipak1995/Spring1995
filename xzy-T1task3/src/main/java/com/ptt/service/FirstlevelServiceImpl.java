package com.ptt.service;

import com.ptt.dao.FirstlevelMapper;
import com.ptt.pojo.Firstlevel;

import java.util.List;

public class FirstlevelServiceImpl implements FirstlevelService{

    private FirstlevelMapper firstlevelMapper;

    public void setFirstlevelMapper(FirstlevelMapper firstlevelMapper) {
        this.firstlevelMapper = firstlevelMapper;
    }

    @Override
    public Integer addFirstlevel(Firstlevel firstlevel) {
        firstlevelMapper.addFirstlevel(firstlevel);
        return firstlevel.getId();
    }

    @Override
    public Integer deleteFirstlevelById(Integer id) {
        return firstlevelMapper.deleteFirstlevelById(id);
    }

    @Override
    public boolean updateFirstlevel(Firstlevel firstlevel) {
        return firstlevelMapper.updateFirstlevel(firstlevel);
    }

    @Override
    public Firstlevel getFirstlevelById(Integer id) {
        return firstlevelMapper.getFirstlevelById(id);
    }

    @Override
    public List<Firstlevel> queryAllFirstlevel() {
        return firstlevelMapper.queryAllFirstlevel();
    }
}
