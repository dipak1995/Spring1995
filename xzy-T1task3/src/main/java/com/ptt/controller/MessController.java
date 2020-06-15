package com.ptt.controller;

import com.ptt.pojo.Mess;
import com.ptt.service.MessService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/mess")
public class MessController {

    Logger logger = Logger.getLogger(MessController.class);

    @Autowired
    @Qualifier("MessServiceImpl")
    private MessService messService;


    //添加一条留言
    @RequestMapping("/add")
    @ResponseBody
    public Map add(Mess mess) {

        Map<String, Object> map = new HashMap<String, Object>();
        try {
            int a = messService.addMess(mess);
            System.out.println(mess);
            logger.info("==============" + a);
            logger.info("==============" + mess.getMessage());
            logger.info("==============" + mess.getTourist());
            logger.info("==============" + mess.getId());

            map.put("code", 200);
            map.put("data", mess);
            map.put("message", "添加成功");
        }catch (Exception e){
            logger.error(e);
            map.put("code", 201);
            map.put("message", "添加失败");
        }
        return map;

    }
    //删除一条留言
    @RequestMapping("/del/{id}")
    @ResponseBody
    public Map delete(@PathVariable("id") Integer id) {
        Map<String, Object> map = new HashMap<>();

        int i = messService.deleteMessById(id);
        logger.info(id);
        if(i>0) {
            map.put("code", 200);
            map.put("message", "删除成功");

        }
        return map;
    }

    //回复一条留言
    @RequestMapping("/update")
    @ResponseBody
    public Map update(Mess mess){
        Map map = new HashMap<>();

        try {
            messService.updateMess(mess);
            logger.info(mess.getReplyContent());
            logger.info(mess.getReplyName());
            logger.info(mess.getState());

            map.put("code", 200);
            map.put("message","修改成功");
            map.put("data",mess);
        }catch (Exception e){
            logger.error("发生错误"+e);
            map.put("code", 201);
            map.put("message","修改失败");
        }

        return map;
    }

    //查询一条
    @RequestMapping("/sel/{id}")
    @ResponseBody
    public Map getById(@PathVariable("id") Integer id){
        Map map = new HashMap<>();
        try {
            Mess mess = messService.getMessById(id);

            map.put("code", 200);
            map.put("message","查询成功！！！！");
            map.put("data",mess);
        }catch (Exception e){
            logger.error("发生错误"+e);
            map.put("code", 201);
            map.put("message","查询失败！！！！");
        }
        return map;
    }

    //查询全部
    @RequestMapping("/all")
    @ResponseBody
    public Map Map(){

        Map map = new HashMap<>();
        try {
            List<Mess> list = messService.queryAllMess();
            map.put("code", 200);
            map.put("message","查询成功！！！！");
            map.put("data",list);
        }catch (Exception e){
            logger.error("发生错误"+e);
            map.put("code", 201);
            map.put("message","查询失败！！！！");
        }
        return map;
    }
}
