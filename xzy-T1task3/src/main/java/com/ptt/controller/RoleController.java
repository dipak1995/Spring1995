package com.ptt.controller;


import com.ptt.pojo.Role;
import com.ptt.service.RoleService;
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
@RequestMapping("role")
public class RoleController {

    Logger logger = Logger.getLogger(RoleController.class);

    @Autowired
    @Qualifier("RoleServiceImpl")
    private RoleService roleService;


    //添加一条留言
    @RequestMapping("/add")
    @ResponseBody
    public Map add(Role role) {

        Map<String, Object> map = new HashMap<String, Object>();
        try {
            int a = roleService.addRole(role);
            System.out.println(role);
            logger.info("=============="+a);
            logger.info("=============="+role.getCreateBy());
            logger.info("=============="+role.getRoletype());
            logger.info("=============="+role.getModels());
            logger.info("=============="+role.getId());

            map.put("code", 200);
            map.put("data", role);
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
        try {
            int i = roleService.deleteRoleById(id);
            logger.info(id);
            if(i>0) {
                map.put("code", 200);
                map.put("message", "删除成功");

            }
        }catch (Exception e){
            logger.error("发生错误"+e);
            map.put("code", 201);
            map.put("message", "删除失败");
        }

        return map;
    }

    //回复一条
    @RequestMapping("/update")
    @ResponseBody
    public Map update(Role role){
        Map map = new HashMap<>();
        try {
            roleService.updateRole(role);

            map.put("code", 200);
            map.put("message","修改成功");
            map.put("data",role);
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
            Role role = roleService.getRoleById(id);

            map.put("code", 200);
            map.put("message","查询成功！！！！");
            map.put("data",role);
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
            List<Role> list = roleService.queryAllRole();

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
