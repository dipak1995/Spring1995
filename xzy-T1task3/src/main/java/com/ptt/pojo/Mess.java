package com.ptt.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Mess {

    private Integer id;
    private String tourist;
    private String message;
    private String state;
    private Integer tId;
    private String replyContent;
    private Date createAt;
    private Date updateAt;
    private String replyName;
}
