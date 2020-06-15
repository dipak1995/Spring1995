package com.ptt.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Account {

    private Integer id;
    private String name;
    @JsonFormat(pattern = "yyyy-MM-dd HH-mm-ss")
    private Date createAt;
    private String createBy;
    private Integer rId;

    private Role role;
}
