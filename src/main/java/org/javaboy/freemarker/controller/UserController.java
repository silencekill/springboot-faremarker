package org.javaboy.freemarker.controller;

import org.javaboy.freemarker.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class UserController {

    @GetMapping("user")
    public String user(Model model){
        List<User> users = new ArrayList<>();
        for(int i=0;i<5;i++){
            users.add(new User(i,"zhang"+i,"add"+i,i));
        }
        model.addAttribute("users",users);
        model.addAttribute("val",1);
        return "index";
    }
}
