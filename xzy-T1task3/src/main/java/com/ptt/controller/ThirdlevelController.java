package com.ptt.controller;


import com.ptt.pojo.Thirdlevel;
import com.ptt.service.ThirdlevelService;
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
@RequestMapping("third")
public class ThirdlevelController {

    Logger logger = Logger.getLogger(ThirdlevelController.class);

    @Autowired
    @Qualifier("ThirdlevelServiceImpl")
    private ThirdlevelService thirdlevelService;


    //添加一条
    @RequestMapping(value = "/add")
    @ResponseBody
    public Map add(Thirdlevel thirdlevel){
        Map<String,Object> map = new HashMap<String, Object>();

        try {
            int i = thirdlevelService.addThirdlevel(thirdlevel);
            System.out.println(thirdlevel);
            logger.info("=============="+i);
            logger.info("=============="+thirdlevel.getCreateBy());
            logger.info("=============="+thirdlevel.getIntroduction());
            logger.info("=============="+thirdlevel.getPicturelink());
            logger.info("=============="+thirdlevel.getState());
            logger.info("=============="+thirdlevel.getUpdateBy());
            logger.info("=============="+thirdlevel.getVideoLink());
            logger.info("=============="+thirdlevel.getWork());
            logger.info("=============="+thirdlevel.getFId());
            logger.info("=============="+thirdlevel.getSId());

            map.put("code",200);
            map.put("data",thirdlevel);
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
            thirdlevelService.deleteThirdlevelById(id);
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
    public Map update(Thirdlevel thirdlevel){
        Map map = new HashMap<>();
        try {
            thirdlevelService.updateThirdlevel(thirdlevel);

            map.put("code", 200);
            map.put("message","修改成功");
            map.put("data",thirdlevel);
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
            Thirdlevel secondlevel = thirdlevelService.getThirdlevelById(id);

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
            List<Thirdlevel> list = thirdlevelService.queryAllThirdlevel();

            logger.info(list);
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
