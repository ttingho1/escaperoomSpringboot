package com.example.escaperoom.vo;

import lombok.Data;

@Data
public class UserVo {
    private Integer index;
    private String email;
    private String password;
    private String pwconfirm;
    private String name;
    private String phone1;
    private String phone2;
    private String phone3;
}
