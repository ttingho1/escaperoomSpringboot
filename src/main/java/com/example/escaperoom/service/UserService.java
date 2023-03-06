package com.example.escaperoom.service;

import com.example.escaperoom.mapper.UserMapper;
import com.example.escaperoom.vo.UserVo;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserMapper userMapper;

    // 모든유저가져오기
    public List<UserVo> getUserList(){
        return userMapper.getUserList();
    }

    // 회원가입
    public void signup(UserVo userVo){
        userMapper.insertUser(userVo);
    }

    // 로그인
    public UserVo login(String email, String password){
        HashMap hashMap = new HashMap();
        hashMap.put("email", email);
        hashMap.put("password", password);
        UserVo userVo = userMapper.getUserForLogin(hashMap);
        if(userVo.getEmail() != null){
            return userVo;
        }
        return null;
    }

    // 마이페이지 - 이메일로 유저 정보 가져오기
    public UserVo getUserByEmail(String email) {
        return userMapper.getUserByEmail(email);
    }

    // 회원정보수정
    public void modifyInfo(UserVo userVo){
        userMapper.updateUser(userVo);
    }

    // 회원탈퇴
    public void withdraw(String email){
        userMapper.deleteUser(email);
    }



}
