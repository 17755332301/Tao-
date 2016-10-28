package com.taotao.controller;

import com.taotao.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * TITLE:
 * USER:TAOTK
 * DATA:2016/9/23
 * TIME:9:26
 * COMPANY:www.51pjia.com
 */
@Controller
public class IndexController {

    @Autowired
    private IndexService indexService;

    @RequestMapping("/selectAllPjPoster")
    public String selectAllPjPoster(){
        return "";
    }


}
