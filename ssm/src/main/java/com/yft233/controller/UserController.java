package com.yft233.controller;

import com.yft233.modle.User;
import com.yft233.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;

    @RequestMapping("/adduser.do")
    public ModelAndView addUser(User user){
        String tips = "注册失败";
        int num = userService.addUser(user);
        if (num > 0){
            tips = "用户【" + user.getUsername() + "】注册成功";
        }

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("tips",tips);
        modelAndView.setViewName("result");
        return modelAndView;
    }

    @RequestMapping("/user_login.do")
    public ModelAndView login (String username,String password){
        String tips = "登陆失败";
        ModelAndView modelAndView = new ModelAndView();
        boolean statue = userService.userLogin(username,password);
        if (statue){
            tips = "用户" + username + "登陆成功";
        }
        modelAndView.addObject("tips",tips);
        modelAndView.setViewName("result");
        return modelAndView;
    }
}
