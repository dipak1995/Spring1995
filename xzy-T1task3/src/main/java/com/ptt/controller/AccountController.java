package com.ptt.controller;


import com.ptt.pojo.Account;
import com.ptt.service.AccountService;
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
@RequestMapping("account")
public class AccountController {

    Logger logger = Logger.getLogger(AccountController.class);

    @Autowired
    @Qualifier("AccountServiceImpl")
    private AccountService accountService;


    //添加一条
    @RequestMapping(value = "/add")
    @ResponseBody
    public Map add(Account account){
        Map<String,Object> map = new HashMap<String, Object>();
        try {
            accountService.addAccount(account);
            System.out.println(account);
            logger.info("======name========"+account.getName());
            logger.info("======create_by========"+account.getCreateBy());
            logger.info("======r_id========"+account.getRId());

            map.put("code", 200);
            map.put("data", account);
            map.put("message", "添加成功");
        }catch (Exception e){
            logger.error("===========添加出现异常"+e);

            map.put("code", 201);
            map.put("message", "添加失败");
        }
        return map;
    }
    //删除一条留言
    @RequestMapping("/del/{id}")
    @ResponseBody
    public Map deleteById(@PathVariable("id") Integer id) {

        Map<String, Object> map = new HashMap<>();
        try {
            accountService.deleteAccountById(id);
            logger.info("=====id=====" + id);

            map.put("code", 200);
            map.put("message", "删除成功");
        }catch (Exception e){
            logger.error("发生异常=========="+e);
            map.put("code", 201);
            map.put("message", "删除失败");
        }
        return map;
    }

    //修改
    @RequestMapping("/update")
    @ResponseBody
    public Map update(Account account){
        Map map = new HashMap<>();
        try {
            accountService.updateAccount(account);
            logger.info("==========name======" + account.getName());
            logger.info("==========create_by======" + account.getCreateBy());


            map.put("code", 200);
            map.put("message", "修改成功");
            map.put("data", account);
        }catch (Exception e){
            logger.error("发生异常======"+e);
            map.put("code", 201);
            map.put("message", "修改失败");
        }
        return map;
    }

    //查询一条
    @RequestMapping("/sel/{id}")
    @ResponseBody
    public Map getById(@PathVariable("id") Integer id){
        Map map = new HashMap<>();
        try {
            Account account = accountService.getAccountById(id);

            map.put("code", 200);
            map.put("message", "查询成功！！！！");
            map.put("data", account);
        }catch (Exception e){
            logger.error("发生异常========"+e);
            map.put("code", 200);
            map.put("message", "查询失败！！！！");
        }
        return map;
    }

    //查询全部
    @RequestMapping("/all")
    @ResponseBody
    public Map Map(){
        Map map = new HashMap<>();
        try {
            List<Account> list = accountService.queryAllAccount();

            map.put("code", 200);
            map.put("message", "查询成功！！！！");
            map.put("data", list);
        }catch (Exception e){
            logger.error(e);
            map.put("code", 201);
            map.put("message", "查询失败！！！！");
        }
        return map;
    }
}
