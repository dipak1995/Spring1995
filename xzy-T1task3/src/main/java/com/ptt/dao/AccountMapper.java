package com.ptt.dao;

import com.ptt.pojo.Account;

import java.util.List;

public interface AccountMapper {

    //增加一个一级标题
    Integer addAccount(Account account);

    //根据id删除一个
    Integer deleteAccountById(Integer id);


    //更新 回复一个
    boolean updateAccount(Account account);

    //根据id查询,返回一个
    Account getAccountById(Integer id);

    //查询全部,返回list集合
    List<Account> queryAllAccount();


}
