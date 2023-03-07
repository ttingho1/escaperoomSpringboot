package com.example.escaperoom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
public class BoardController {

    // 게시판 - 진행중
    @GetMapping("/list")
    public String list() {
        return "list";
    }
}
