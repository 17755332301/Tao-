package com.taotao.controller;

import com.taotao.model.PjPoster;
import com.taotao.service.IndexService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * TITLE:页面跳转的控制层
 * USER:TAOTK
 * DATA:2016/9/21
 * TIME:9:48
 * COMPANY:www.51pjia.com
 */
@Controller
public class PageController {

    Logger log = LoggerFactory.getLogger(PageController.class);

    @Autowired
    private IndexService indexService;


    /**
     * 跳转到首页
     * @return
     */
    @RequestMapping("/")
    public String skipIndex(Model model){

        List<PjPoster> pjPosters = indexService.selectAllPoster();
        model.addAttribute("pjPoster",pjPosters);
        return "index";
    }

    /**
     * 跳转proview
     * @param model
     * @return
     */
    @RequestMapping("/proview")
    public String skipProview(Model model){
        return "proview";
    }


    /**
     * 跳转prolist
     * @param model
     * @return
     */
    @RequestMapping("/prolist")
    public String skipProlist(Model model){
        return "prolist";
    }

    /**
     * 跳转list
     * @param model
     * @return
     */
    @RequestMapping("/list")
    public String skipList(Model model){
        return "list";
    }

    /**
     * 跳转download
     * @param model
     * @return
     */
    @RequestMapping("/download")
    public String skipDownload(Model model){
        return "download";
    }

    /**
     * 跳转about
     * @param model
     * @return
     */
    @RequestMapping("/about")
    public String skipAbout(Model model){
        return "about";
    }
}
