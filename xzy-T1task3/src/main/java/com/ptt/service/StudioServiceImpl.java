package com.ptt.service;

import com.ptt.dao.StudioMapper;
import com.ptt.pojo.Studio;

import java.util.List;

public class StudioServiceImpl implements StudioService{

    private StudioMapper studioMapper;

    public void setStudioMapper(StudioMapper studioMapper) {
        this.studioMapper = studioMapper;
    }

    @Override
    public Integer addStudio(Studio studio) {
        studioMapper.addStudio(studio);
        return studio.getId();
    }

    @Override
    public Integer deleteStudioById(Integer id) {
        return studioMapper.deleteStudioById(id);
    }

    @Override
    public boolean updateStudio(Studio studio) {
        return studioMapper.updateStudio(studio);
    }

    @Override
    public Studio getStudioById(Integer id) {
        return studioMapper.getStudioById(id);
    }

    @Override
    public List<Studio> queryAllStudio() {
        return studioMapper.queryAllStudio();
    }
}
