package com.taotao.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * TITLE:页面跳转的控制层
 * USER:TAOTK
 * DATA:2016/9/21
 * TIME:9:48
 * COMPANY:www.51pjia.com
 */
@Controller
public class PageController {

    /**
     * 跳转到首页
     * @return
     */
    @RequestMapping("/")
    public String skipIndex(){
        return "index";
    }


}
