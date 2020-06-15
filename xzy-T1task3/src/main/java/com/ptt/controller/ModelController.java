package com.ptt.controller;

import com.ptt.pojo.Model;
import com.ptt.service.ModelService;
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
@RequestMapping("/model")
public class ModelController {

    Logger logger = Logger.getLogger(ModelController.class);

    @Autowired
    @Qualifier("ModelServiceImpl")
    private ModelService modelService;


    //添加一条
    @RequestMapping("/add")
    @ResponseBody
    public Map add(Model model) {

        logger.info("=============="+model.getCreateBy());
        logger.info("=============="+model.getModelName());
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            int a = modelService.addModel(model);
            System.out.println(model);
            logger.info("=============="+a);
            logger.info("=============="+model.getCreateBy());
            logger.info("=============="+model.getModelName());

            map.put("code", 200);
            map.put("data", model);
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
        int i = modelService.deleteModelById(id);
        logger.info(id);
        if(i>0) {
            map.put("code", 200);
            map.put("message", "删除成功");

        }
        return map;
    }

    //回复一条
    @RequestMapping("/update")
    @ResponseBody
    public Map update(Model model){
        Map map = new HashMap<>();
        try {
            modelService.updateModel(model);
            logger.info(model.getCreateBy());
            logger.info(model.getModelName());
            logger.info(model.getURL());

            map.put("code", 200);
            map.put("message","修改成功");
            map.put("data",model);
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
            Model model = modelService.getModelById(id);

            map.put("code", 200);
            map.put("message","查询成功！！！！");
            map.put("data",model);
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
            List<Model> list = modelService.queryAllModel();

            map.put("code", 200);
            map.put("message","查询成功！！！！");
            map.put("data",list);
        }catch (Exception e){
            logger.error("发生错误"+e);
            map.put("code", 200);
            map.put("message","查询失败！！！！");
        }
        return map;
    }
}
