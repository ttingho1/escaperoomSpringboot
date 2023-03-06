package com.example.escaperoom.mapper;

import com.example.escaperoom.vo.UserVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;

@Mapper
public interface UserMapper {

    List<UserVo> getUserList(); // 모든회원정보 출력

    void insertUser(UserVo userVo); // 회원가입

    UserVo getUserForLogin(HashMap hashMap); // 로그인

    UserVo getUserByEmail(String email); // 마이페이지 - 이메일로 회원정보 가져오기

    void updateUser(UserVo userVo); // 회원정보수정

    void deleteUser(String email); // 회원 탈퇴

}
