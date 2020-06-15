package com.ptt.service;

import com.ptt.dao.MessMapper;
import com.ptt.pojo.Mess;

import java.util.List;

public class MessServiceImpl implements MessService{

    private MessMapper messMapper;

    public void setMessMapper(MessMapper messMapper) {
        this.messMapper = messMapper;
    }

    @Override
    public Integer addMess(Mess mess) {
         messMapper.addMess(mess);
         return mess.getId();
    }

    @Override
    public Integer deleteMessById(Integer id) {
        return messMapper.deleteMessById(id);
    }

    @Override
    public boolean updateMess(Mess mess) {
        return messMapper.updateMess(mess);
    }

    @Override
    public Mess getMessById(Integer id) {
        return messMapper.getMessById(id);
    }

    @Override
    public List<Mess> queryAllMess() {
        return messMapper.queryAllMess();
    }

}
