package com.example.mvcproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mainController {

    @RequestMapping("/mainBoard")
    public String home(){
        return "mainBoard";
    }

    @RequestMapping("/joinAcP")
    public String joinAcP(){
        return "joinAcP";
    }

    @RequestMapping("/loginP")
    public String loginP(){
        return "loginP";
    }
}
