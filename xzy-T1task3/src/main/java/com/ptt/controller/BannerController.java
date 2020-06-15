package com.ptt.controller;


import com.ptt.pojo.Banner;
import com.ptt.service.BannerService;
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
@RequestMapping("banner")
public class BannerController {

    Logger logger = Logger.getLogger(BannerController.class);

    @Autowired
    @Qualifier("BannerServiceImpl")
    private BannerService bannerService;


    //添加一条
    @RequestMapping(value = "/add")
    @ResponseBody
    public Map add(Banner banner){
        Map<String,Object> map = new HashMap<String, Object>();

        try {
            int i = bannerService.addBanner(banner);
            System.out.println(banner);
            logger.info("==============" +banner.getPicture());
            logger.info("==============" +banner.getState());
            logger.info("==============" +banner.getCreateBy());
            logger.info("==============" +banner.getUpdateBy());
            logger.info("==============" +banner.getUrl());

            map.put("code", 200);
            map.put("data", banner);
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
    public Map deleteById(@PathVariable("id") Integer id) {
        Map<String,Object> map = new HashMap<>();
        try {
            bannerService.deleteBannerById(id);
            logger.info("=============" + id);
            map.put("code", 200);
            map.put("message", "删除成功");
        }catch (Exception e){
            logger.error("发生异常======"+e);
            map.put("code", 201);
            map.put("message", "删除失败");
        }
        return map;
    }

    //修改
    @RequestMapping("/update")
    @ResponseBody
    public Map update(Banner banner){
        Map map = new HashMap<>();

        try {
            bannerService.updateBanner(banner);
            logger.info(banner.getCreateBy());
            logger.info(banner.getPicture());
            logger.info(banner.getState());
            logger.info(banner.getUpdateBy());
            logger.info(banner.getUrl());

            map.put("code", 200);
            map.put("message","修改成功");
            map.put("data",banner);
        }catch (Exception e){
            logger.error("发生错误===="+e);
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
            Banner banner = bannerService.getBannerById(id);

            map.put("code", 200);
            map.put("message","查询成功！！！！");
            map.put("data",banner);
        }catch (Exception e){
            logger.error("发生错误===="+e);
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
            List<Banner> list = bannerService.queryAllBanner();
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
