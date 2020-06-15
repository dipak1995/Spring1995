package com.ptt.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Model {

    private Integer id;
    private String modelName;
    private String URL;
    private Date createAt;
    private String createBy;

}
