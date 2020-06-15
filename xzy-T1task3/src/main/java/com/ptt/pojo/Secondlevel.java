package com.ptt.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Secondlevel {

    private Integer id;
    private String secondTitle;
    private Date createAt;
    private Date updateAt;
    private String createBy;
    private String updateBy;
    private Integer fId;

    private Firstlevel firstlevel;
}
