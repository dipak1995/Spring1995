package com.ptt.controller;


import com.ptt.pojo.Studio;
import com.ptt.service.StudioService;
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
@RequestMapping("studio")
public class StudioController {

    Logger logger = Logger.getLogger(StudioController.class);

    @Autowired
    @Qualifier("StudioServiceImpl")
    private StudioService studioService;


    //添加一条
    @RequestMapping(value = "/add")
    @ResponseBody
    public Map add(Studio studio){
        Map<String,Object> map = new HashMap<String, Object>();

        try {
            int i = studioService.addStudio(studio);
            System.out.println(studio);
            logger.info("=============="+i);
            logger.info("=============="+studio.getCreateBy());
            logger.info("=============="+studio.getIntroduction());
            logger.info("=============="+studio.getPictureLink());
            logger.info("=============="+studio.getState());
            logger.info("=============="+studio.getUpdateBy());
            logger.info("=============="+studio.getIntroductionType());

            map.put("code",200);
            map.put("data",studio);
            map.put("message","添加成功");
        }catch (Exception e){
            logger.error(e);
            map.put("code",201);
            map.put("message","添加失败");
        }

        return map;
    }
    //删除一条留言
    @RequestMapping("/del/{id}")
    @ResponseBody
    public Map deleteById(@PathVariable("id") Integer id) {
        Map<String,Object> map = new HashMap<>();
        try {
            studioService.deleteStudioById(id);
            logger.info(id);

            map.put("code", 200);
            map.put("message","删除成功");
        }catch (Exception e){
            logger.error("发生错误"+e);
            map.put("code", 201);
            map.put("message","删除失败");
        }

        return map;
    }

    //修改
    @RequestMapping("/update")
    @ResponseBody
    public Map update(Studio studio){
        Map map = new HashMap<>();
        try {
            studioService.updateStudio(studio);
            logger.info(studio.getIntroductionType());
            logger.info(studio.getIntroduction());
            logger.info(studio.getPictureLink());
            logger.info(studio.getState());
            logger.info(studio.getUpdateBy());

            map.put("code", 200);
            map.put("message","修改成功");
            map.put("data",studio);
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
            Studio secondlevel = studioService.getStudioById(id);

            map.put("code", 200);
            map.put("message","查询成功！！！！");
            map.put("data",secondlevel);
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
            List<Studio> list = studioService.queryAllStudio();

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
