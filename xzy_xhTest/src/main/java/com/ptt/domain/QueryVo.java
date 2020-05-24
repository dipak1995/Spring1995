package com.ptt.domain;

import java.io.Serializable;

/**
 * 用于封装查询条件
 */

public class QueryVo implements Serializable {
    private Bmb bmb;
    //如果还有其他条件的查询，就可以一并封装进来


    public Bmb getBmb() {
        return bmb;
    }

    public void setBmb(Bmb bmb) {
        this.bmb = bmb;
    }
}
