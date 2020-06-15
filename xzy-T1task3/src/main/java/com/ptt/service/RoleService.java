package com.ptt.service;

import com.ptt.pojo.Role;

import java.util.List;

public interface RoleService {

    //增加一个一级标题
    Integer addRole(Role role);

    //根据id删除一个
    Integer deleteRoleById(Integer id);


    //更新 回复一个
    boolean updateRole(Role role);

    //根据id查询,返回一个
    Role getRoleById(Integer id);

    //查询全部,返回list集合
    List<Role> queryAllRole();

}
