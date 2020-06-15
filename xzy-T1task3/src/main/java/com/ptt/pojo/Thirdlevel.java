package com.ptt.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Thirdlevel {

    private Integer id;
    private String work;
    private String state;
    private String introduction;
    private String picturelink;
    private String videoLink;
    private Date createAt;
    private Date updateAt;
    private String createBy;
    private String updateBy;
    private Integer sId;
    private Integer fId;

    private Firstlevel firstlevel;
    private Secondlevel secondlevel;
}

