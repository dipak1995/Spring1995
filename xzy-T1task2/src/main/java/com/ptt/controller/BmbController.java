package com.ptt.controller;

import com.ptt.pojo.Bmb;
import com.ptt.service.BmbService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/bmb")
public class BmbController {

    Logger logger = Logger.getLogger(BmbController.class);

    @Autowired
    @Qualifier("BmbServiceImpl")
    private BmbService bmbService;

    //查询全部
    @RequestMapping("/allBmb")
    public String list(Model model){
        logger.info("---------查询开始-------------");
        try {
            List<Bmb> list = bmbService.queryAllBmb();
            model.addAttribute("list",list);

        }catch (Exception e){
            e.printStackTrace();
            logger.error(e.getMessage(),e);
        }

        return "allBmb";
    }

    //添加成员
    @RequestMapping("/toAddBmb")
    public String toAddPeople(){
        return "addBmb";
    }

    @RequestMapping(value = "/addBmb",method = RequestMethod.POST)
    public String addPeople(Bmb bmb){
        System.out.println(bmb);
        int i = bmbService.saveBmb(bmb);
        if(i>0){
            System.out.println("添加成功");
        }
        return "redirect:/bmb/allBmb";
    }
    //修改一条记录
    @RequestMapping("/toUpdateBmb")
    public String toUpdateBmb(Model model,int id){
        Bmb bmb = bmbService.getBmbById(id);
        System.out.println(bmb);
        model.addAttribute("Qbmb",bmb);
        return "updateBmb";
    }

    @RequestMapping("/updateBmb")
    public String updateBmb(Model model,Bmb bmb){
        System.out.println(bmb);
        int i = bmbService.updateBmb(bmb);
        if(i>0){
            System.out.println("更新成功");
        }
        Bmb bmb1 = bmbService.getBmbById(bmb.getId());
        model.addAttribute("bmb",bmb1);
        return "redirect:/bmb/allBmb";
    }
    //删除一本书籍
    @RequestMapping("/del/{id}")
    public String deleteBook(@PathVariable("id") int id) {
        int i = bmbService.deleteBmbById(id);
        if(i>0){
            System.out.println("删除成功");
        }
        return "redirect:/bmb/allBmb";
    }

    //查询全部
    @RequestMapping("/allBmb1")
    @ResponseBody
    public List<Bmb> listBmb() {
        List<Bmb> list = bmbService.queryAllBmb();
        return list;
    }
}

