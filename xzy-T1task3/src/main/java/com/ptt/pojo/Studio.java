package com.ptt.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class Studio {

    private Integer id;
    private String introductionType;
    private String pictureLink;
    private String state;
    private String introduction;
    private Date createAt;
    private Date updateAt;
    private String createBy;
    private String updateBy;
}
