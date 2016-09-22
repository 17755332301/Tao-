package com.taotao.controller.poster;

import com.taotao.common.TaotaoResult;
import com.taotao.model.PjPoster;
import com.taotao.model.PjPosterCategory;
import com.taotao.service.PosterService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * TITLE:
 * USER:TAOTK
 * DATA:2016/9/14
 * TIME:15:43
 * COMPANY:www.51pjia.com
 */
@Controller
@RequestMapping("/poster")
public class PosterCategoryController {

    //日志
    Logger log = LoggerFactory.getLogger(PosterCategoryController.class);

    @Autowired
    private PosterService posterService;

    /**
     * 跳转
     *
     * @return
     */
    @RequestMapping("/postercategory")
    public String posterCategory(Model model) {
        try {
            //查询所有的分类
            List<PjPosterCategory> pjPosterCategoryAll = posterService.selectPjPosterCategoryAll();
            for (PjPosterCategory pjPosterCategory : pjPosterCategoryAll) {
                List<PjPoster> pjPosters = posterService.selectPjPosterByCategoryId(pjPosterCategory.getId());
                pjPosterCategory.setNumber(pjPosters.size());
            }
            model.addAttribute("list",pjPosterCategoryAll);
            return "poster/Sort_ads";
        } catch (Exception e) {
            e.printStackTrace();
            log.info("查询所有的分类失败。URL:/poster/postercategory");
            return null;
        }

    }

    /**
     * ajax显示下拉列表
     * @return
     */
    @RequestMapping("/selectAllPosterCategory")
    @ResponseBody
    public List<PjPosterCategory> selectAllPosterCategory(){

        try {
            //查询所有的分类
            List<PjPosterCategory> pjPosterCategoryAll = posterService.selectPjPosterCategoryAll();
            return pjPosterCategoryAll;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 插入一条广告分类
     * param request
     * @return
     */
    @RequestMapping("/insertPosterCategory")
    @ResponseBody
    public Map<String,Object> insertPosterCategory(HttpServletRequest request , PjPosterCategory pjPosterCategory) {
        try {
            request.setCharacterEncoding("utf-8");
            pjPosterCategory.setCreate_time(new Date());//创建的时间
            //插入
            posterService.insertPosterCategory(pjPosterCategory);
            return TaotaoResult.jsonBack( 1 ,"添加广告分类成功！");
        } catch (Exception e) {
            e.printStackTrace();
            log.info("插入一条分类广告错误！URL:/poster/insertPosterCategory");
            return TaotaoResult.jsonBack( 2 ,"添加广告分类失败！");
        }
    }

    /**
     * 删除广告位
     * @param id
     * @return
     */
    @RequestMapping("/deletePosterCategory")
    @ResponseBody
    public Map<String,Object> deletePosterCategory(Integer id){
        try {
            //删除
            posterService.deletePjPosterCategory(id);
            return TaotaoResult.jsonBack(1,"删除成功！");
        } catch (Exception e) {
            e.printStackTrace();
            log.info("删除失败。URL:/poster/deletePosterCategory");
            return TaotaoResult.jsonBack(2,"删除失败！");
        }
    }
}
