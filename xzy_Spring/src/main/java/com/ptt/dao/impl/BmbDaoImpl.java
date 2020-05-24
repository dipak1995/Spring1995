package com.ptt.dao.impl;

import com.ptt.dao.IBmbDao;
import com.ptt.domain.Bmb;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import javax.swing.plaf.basic.BasicMenuBarUI;
import java.util.List;

import static java.time.LocalDateTime.now;


@Repository("bmbDao")
public class BmbDaoImpl implements IBmbDao {

    @Autowired
    private QueryRunner runner;
/*不再需要持久化（set）方法
    public void setRunner(QueryRunner runner){
        this.runner = runner;
    }
*/
    public List<Bmb> listAllBmbs() {
        try{
            return runner.query("select * from bmb",new BeanListHandler<Bmb>(Bmb.class));
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    public Bmb getBmbById(Integer BmbId) {
        try{
            return runner.query("select * from bmb where id = ?",new BeanHandler<Bmb>(Bmb.class),BmbId);
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    public void saveBmb(Bmb bmb) {
        try{
            runner.update("insert into bmb(name,qq,type,jointime,school,study_id,daily_link,hope,create_at)" +
                            "values(?,?,?,?,?,?,?,?,?)",bmb.getName(),bmb.getQq(),bmb.getType(),bmb.getJointime()
                    ,bmb.getSchool(),bmb.getStudy_id(),bmb.getDaily_link(),bmb.getHope(),now());
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    public void updateBmb(Bmb bmb) {
        try{
            runner.update("update bmb set name = ?,qq = ? where id = ?",bmb.getName(),bmb.getQq(),bmb.getId());
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    public void deleteBmb(Integer bmbId) {
        try{
            runner.update("delete from bmb where id = ?",bmbId);
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }
}
