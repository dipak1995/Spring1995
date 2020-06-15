package com.ptt.controller;

import com.ptt.pojo.Firstlevel;
import com.ptt.service.FirstlevelService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("first")
public class FirstlevelController {

    Logger logger = Logger.getLogger(FirstlevelController.class);

    @Autowired
    @Qualifier("FirstlevelServiceImpl")
    private FirstlevelService firstlevelService;


    //添加一条
    @RequestMapping(value = "/add")
    @ResponseBody
    public Map add(Firstlevel firstlevel){
        Map<String,Object> map = new HashMap<String, Object>();

        try {
            int i = firstlevelService.addFirstlevel(firstlevel);
            System.out.println(firstlevel);
            logger.info("=============="+i);
            logger.info("=============="+firstlevel.getId());
            logger.info("=============="+firstlevel.getCreateBy());
            logger.info("=============="+firstlevel.getFirstTitle());
            logger.info("=============="+firstlevel.getUpdateBy());

            map.put("code",200);
            map.put("data",firstlevel);
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
            firstlevelService.deleteFirstlevelById(id);
            logger.info(id);

            map.put("code", 200);
            map.put("message","删除成功");
        }catch (Exception e){
            logger.error("发生错误==="+e);
            map.put("code", 200);
            map.put("message","删除失败");
        }

        return map;
    }

    //修改
    @RequestMapping("/update")
    @ResponseBody
    public Map update(Firstlevel firstlevel){
        Map map = new HashMap<>();

        try {
            firstlevelService.updateFirstlevel(firstlevel);
            logger.info(firstlevel.getFirstTitle());
            logger.info(firstlevel.getUpdateBy());

            map.put("code", 200);
            map.put("Firstlevelage","修改成功");
            map.put("data",firstlevel);
        }catch (Exception e){
            logger.error("发生错误"+e);
            map.put("code", 201);
            map.put("Firstlevelage","修改失败");
        }


        return map;
    }

    //查询一条
    @RequestMapping("/sel/{id}")
    @ResponseBody
    public Map getById(@PathVariable("id") Integer id){
        Map map = new HashMap<>();
        try {
            Firstlevel firstlevel = firstlevelService.getFirstlevelById(id);

            map.put("code", 200);
            map.put("message","查询成功！！！！");
            map.put("data",firstlevel);
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
            List<Firstlevel> list = firstlevelService.queryAllFirstlevel();

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
