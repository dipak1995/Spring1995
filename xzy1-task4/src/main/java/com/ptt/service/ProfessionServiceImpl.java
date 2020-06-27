package com.ptt.service;

import com.ptt.dao.ProfessionDao;
import com.ptt.pojo.Profession;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ProfessionServiceImpl implements ProfessionService{

    @Resource
    private ProfessionDao professionDao;

    @Override
    public List<Profession> selectProfessions() {
        return professionDao.selectProfessions();
    }
}
