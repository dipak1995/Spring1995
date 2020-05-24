package com.ptt.test;

import com.ptt.domain.Bmb;
import com.ptt.service.IBmbService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class BmbServiceTest {
    private ApplicationContext ac;
    private IBmbService service;

    @Before
    public void init(){
        ac = new ClassPathXmlApplicationContext("bean_anno.xml");
        service = ac.getBean("bmbService",IBmbService.class);
    }

    @Test
    public void testListAllBmbs() {
        List<Bmb> bmbs = service.listAllBmbs();
        for (Bmb bmb : bmbs){
            System.out.println(bmb);
        }
    }

    @Test
    public void testGetBmbById(){
        Bmb bmb = service.getBmbById(3);
        System.out.println(bmb);
    }

    @Test
    public void testSaveBmb() {
        Bmb bmb = new Bmb();

        bmb.setName("test");
        bmb.setQq("123456");
        bmb.setType("后端工程师");
        bmb.setJointime("1995-5-10");
        bmb.setSchool("9527");
        bmb.setStudy_id("9527");
        bmb.setDaily_link("http://www.jnshu.com/daily/95029?dailyType=others&total=13&page=1&uid=34292&sort=0&orderBy=3");
        bmb.setHope("加油");

        service.saveBmb(bmb);
    }

    @Test
    public void testUpdateBmb(){
        Bmb bmb = service.getBmbById(3);
        bmb.setName("周星星");
        service.updateBmb(bmb);
    }

    @Test
    public void testDeleteBmb(){
        service.deleteBmb(15);

    }
}
