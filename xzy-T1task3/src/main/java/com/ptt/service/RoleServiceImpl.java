package com.ptt.service;

import com.ptt.dao.RoleMapper;
import com.ptt.pojo.Role;

import java.util.List;

public class RoleServiceImpl implements RoleService{

    private RoleMapper roleMapper;

    public void setRoleMapper(RoleMapper roleMapper) {
        this.roleMapper = roleMapper;
    }

    @Override
    public Integer addRole(Role role) {
        roleMapper.addRole(role);
        return role.getId();
    }

    @Override
    public Integer deleteRoleById(Integer id) {
        return roleMapper.deleteRoleById(id);
    }

    @Override
    public boolean updateRole(Role role) {
        return roleMapper.updateRole(role);
    }

    @Override
    public Role getRoleById(Integer id) {
        return roleMapper.getRoleById(id);
    }

    @Override
    public List<Role> queryAllRole() {
        return roleMapper.queryAllRole();
    }

}
