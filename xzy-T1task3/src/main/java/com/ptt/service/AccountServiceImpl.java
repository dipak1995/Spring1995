package com.ptt.service;

import com.ptt.dao.AccountMapper;
import com.ptt.pojo.Account;

import java.util.List;

public class AccountServiceImpl implements AccountService{

    private AccountMapper accountMapper;

    public void setAccountMapper(AccountMapper accountMapper) {
        this.accountMapper = accountMapper;
    }

    @Override
    public Integer addAccount(Account account) {
        accountMapper.addAccount(account);
        return account.getId();
    }

    @Override
    public Integer deleteAccountById(Integer id) {
        return accountMapper.deleteAccountById(id);
    }

    @Override
    public boolean updateAccount(Account account) {
        return accountMapper.updateAccount(account);
    }

    @Override
    public Account getAccountById(Integer id) {
        return accountMapper.getAccountById(id);
    }

    @Override
    public List<Account> queryAllAccount() {
        return accountMapper.queryAllAccount();
    }
}
