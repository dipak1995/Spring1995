package com.ptt.service.impl;

import com.ptt.dao.IBmbDao;
import com.ptt.domain.Bmb;
import com.ptt.service.IBmbService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("bmbService")
public class BmbServiceImpl implements IBmbService {

    @Autowired
    private IBmbDao bmbDao;
/*此时不再需要set方法
    public void setBmbDao(IBmbDao bmbDao){
        this.bmbDao = bmbDao;
    }*/

    public List<Bmb> listAllBmbs() {
        return bmbDao.listAllBmbs();
    }

    public Bmb getBmbById(Integer bmbId) {
        return bmbDao.getBmbById(bmbId);
    }

    public void saveBmb(Bmb bmb) {
        bmbDao.saveBmb(bmb);
    }

    public void updateBmb(Bmb bmb) {
        bmbDao.updateBmb(bmb);
    }

    public void deleteBmb(Integer bmbId) {
        bmbDao.deleteBmb(bmbId);
    }

}
