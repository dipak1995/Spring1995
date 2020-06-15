package com.ptt.controller;

import com.ptt.pojo.Secondlevel;
import com.ptt.service.SecondlevelService;
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
@RequestMapping("second")
public class SecondlevelController {

    Logger logger = Logger.getLogger(SecondlevelController.class);

    @Autowired
    @Qualifier("SecondlevelServiceImpl")
    private SecondlevelService secondlevelService;


    //添加一条
    @RequestMapping(value = "/add")
    @ResponseBody
    public Map add(Secondlevel secondlevel){
        Map<String,Object> map = new HashMap<String, Object>();

        try {
            int i = secondlevelService.addSecondlevel(secondlevel);
            System.out.println(secondlevel);
            logger.info("=============="+i);
            logger.info("=============="+secondlevel.getCreateBy());
            logger.info("=============="+secondlevel.getSecondTitle());
            logger.info("=============="+secondlevel.getFId());

            map.put("code",200);
            map.put("data",secondlevel);
            map.put("message","添加成功");
        }catch (Exception e){
            logger.error(e);
            map.put("code",201);
            map.put("message","添加失败");
        }

        return map;
    }
    //删除一
    @RequestMapping("/del/{id}")
    @ResponseBody
    public Map deleteById(@PathVariable("id") Integer id) {
        Map<String,Object> map = new HashMap<>();
        try {
            secondlevelService.deleteSecondlevelById(id);

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
    public Map update(Secondlevel secondlevel){
        Map map = new HashMap<>();
        try {
            secondlevelService.updateSecondlevel(secondlevel);

            map.put("code", 200);
            map.put("message","修改成功");
            map.put("data",secondlevel);
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
            Secondlevel secondlevel = secondlevelService.getSecondlevelById(id);

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
        List<Secondlevel> list = secondlevelService.queryAllSecondlevel();

        map.put("code", 200);
        map.put("message","查询成功！！！！");
        map.put("data",list);

        return map;
    }
}
