package com.example.escaperoom.controller;

import com.example.escaperoom.service.UserService;
import com.example.escaperoom.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class AccountController {

    @Autowired
    private UserService userService;

    // 메인페이지 요청
    @GetMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/admin")
    public String getUserList(Model model) {
        List<UserVo> userList = userService.getUserList();
        model.addAttribute("list", userList);
        return "admin";
    }

    // 로그인페이지 요청
    @GetMapping("/login")
    public String toLoginPage(HttpSession session) {
        Long index = (Long) session.getAttribute("userId");
        if (index != null) {
            return "redirect:/";
        }
        return "login";
    }

    // 로그인 처리
    @PostMapping("/login")
    public String login(String email, String password, HttpSession session) {
        UserVo userVo = new UserVo();
        userVo = userService.login(email, password);
        if(userVo.getEmail() != null){
            session.setAttribute("email", userVo.getEmail());
            session.setAttribute("name", userVo.getName());
            return "redirect:/";
        }
        return "redirect:/login";
    }

    // 로그아웃 처리
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }

    // 회원가입페이지 요청
    @GetMapping("/signup")
    public String toSignupPage(){
        return "signup";
    }

    // 회원가입 처리
    @PostMapping("/signup")
    public String signup(UserVo userVo){
        try {
            userService.signup(userVo);
        } catch (DuplicateKeyException e) {
            return "redirect:/signup?error_code=-1";
        } catch (Exception e){
            e.printStackTrace();
            return "redirect:/signup?error_code=-99";
        }
        return "redirect:/login";
    }

    // 마이페이지 - 미완성
//    @GetMapping("/myPage")
//    public String myPage(HttpServletRequest request, HttpSession session, ModelMap mm) {
//        String email = session.getAttribute("email") == null ? "" : session.getAttribute("email").toString();
//        if(email.equals("")){
//            return "redirect:/login";
//        }
//        UserVo userVo = new UserVo();
//        userVo = userService.getUserByEmail(email);
//
//        mm.put("userVo", userVo);
//        return "redirect:/login";
//    }

    // 마이페이지 - 임시
    @GetMapping("/myPage")
    public String home(HttpSession session, Model model){
        String email = (String) session.getAttribute("email");
        if(email != null){
            UserVo userVo = userService.getUserByEmail(email);
            model.addAttribute("user", userVo);
            return "myPage";
        }
        return "redirect:/login";
    }

    // 회원정보수정 페이지 요청
    @GetMapping("/update")
    public String toUpdatePage(HttpSession session, Model model){
        String email = (String) session.getAttribute("email");
        UserVo userVo = userService.getUserByEmail(email);
        model.addAttribute("user", userVo);
        return "update";
    }

    // 회원정보 수정 처리
    @PostMapping("/update")
    public String modifyInfo(HttpSession session, UserVo userVo){
        String email = (String) session.getAttribute("email");
        userVo.setEmail(email);
        userService.modifyInfo(userVo);
        return "redirect:/myPage";
    }

    // 회원탈퇴 처리
    @PostMapping("/delete")
    public String withdraw(HttpSession session){
        String email = (String) session.getAttribute("email");
        if(email != null){
            userService.withdraw(email);
        }
        session.invalidate();
        return "redirect:/login";
    }

    // 게시판 - 미완성
    @GetMapping("/reservationQna")
    public String reservationQna(){
        return "/reservationQna";
    }

}
