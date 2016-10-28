package com.taotao.controller.poster;

import com.taotao.common.TaotaoResult;
import com.taotao.model.PjPoster;
import com.taotao.model.PjPosterCategory;
import com.taotao.service.PosterService;
import net.coobird.thumbnailator.Thumbnails;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * TITLE:广告的控制层
 * USER:TAOTK
 * DATA:2016/9/18
 * TIME:16:05
 * COMPANY:www.51pjia.com
 */
@Controller
@RequestMapping("/poster")
public class PosterController {

    //日志
    Logger log = LoggerFactory.getLogger(PosterController.class);


    @Autowired
    private PosterService posterService;


    /**
     * 查询所有的广告
     *
     * @param model
     * @return
     */
    @RequestMapping("/poster")
    public String poster(Model model, HttpServletRequest request) {
        String servletPath = request.getServletPath();
        System.out.println(servletPath);

        //查询所有的广告分类
        List<PjPosterCategory> categoryAll = posterService.selectPjPosterCategoryAll();

        //遍历查询每一个广告分类下的广告图片的数量
        for (PjPosterCategory pjPosterCategory : categoryAll) {
            List<PjPoster> pjPosters = posterService.selectPjPosterByCategoryId(pjPosterCategory.getId());
            pjPosterCategory.setNumber(pjPosters.size());
        }
        //查询所有的广告图片
        List<PjPoster> pjPosters = posterService.selectAllPoster();
        model.addAttribute("categoryAll", categoryAll);
        model.addAttribute("number", pjPosters.size());
        model.addAttribute("posterList", pjPosters);
        return "poster/advertising";
    }

    /**
     * 添加广告
     *
     * @param pjPoster
     * @return
     */
    @RequestMapping("/insertPoster")
    @ResponseBody
    public Map<String, Object> insertPoster(PjPoster pjPoster, String len, String wid) {
        try {
             int i = posterService.selectMaxId();//获取最大的id
             PjPoster basePjPoster = posterService.selectPjPosterById(i);
             pjPoster.setId(i);
             pjPoster.setPoster_url(basePjPoster.getPoster_url());//路径
             pjPoster.setCreate_time(basePjPoster.getCreate_time());//创建时间
             pjPoster.setPoster_size(len+"×"+wid);//尺寸
            pjPoster.setPoster_small_url(basePjPoster.getPoster_small_url());//小图片的路径
             if(!"".equals(pjPoster.getCategory_id()) || pjPoster.getCategory_id() != null ){
                 //通过分类的id查询
                 PjPosterCategory pjPosterCategory = posterService.selectPjPosterCategoryById(pjPoster.getCategory_id());
                 pjPoster.setCategory_name(pjPosterCategory.getCategory_name());
             }

             posterService.updatePjPoster(pjPoster);
             return TaotaoResult.jsonBack(1, "添加成功！");
        } catch (Exception e) {
            e.printStackTrace();
            log.info("添加广告失败。URL:/poster/insertPoster");
            return TaotaoResult.jsonBack(2, "添加失败！");
        }
    }

    /**
     * 上传图片
     *
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/upload")
    @ResponseBody
    public Map<String, Object> upload(HttpServletRequest request, HttpServletResponse response, MultipartFile Filedata) throws IOException {

        try {
            String path = request.getSession().getServletContext().getRealPath("upload");

            // 1、取文件的扩展名
            String originalFilename = Filedata.getOriginalFilename();
            String extName = originalFilename.substring(originalFilename.lastIndexOf(".") + 1);
            // 保存文件
            String fileName = new Date().getTime() + ".jpg";
            File targetFile = new File(path, fileName);
            PjPoster pjPoster = new PjPoster();
            pjPoster.setCreate_time(new Date());
            pjPoster.setPoster_url("http://51taorui.com/upload/" + fileName);

            Filedata.transferTo(targetFile);
               /* 按指定大小把图片进行缩放（会遵循原图高宽比例）*/
            String originPath = path+"/" + fileName;//图片来源的路径
            String descPath =   path+"/small/"+fileName;
            File descFilePath = new File(descPath);

            Thumbnails.of(originPath).
                    forceSize(145,65).//压缩图片的大小
                    toFile(descPath);//
            pjPoster.setPoster_small_url("http://51taorui.com/upload/small/" + fileName);
            posterService.insertPoster(pjPoster);//添加


            return TaotaoResult.jsonBack(1, "上传成功！");
        } catch (Exception e) {
            e.printStackTrace();
            log.info("上传图片失败！URL：/poster/upload");
            return TaotaoResult.jsonBack(2, "上传失败！");
        }
    }

    /**
     * 将文件名返回
     *
     * @param request
     * @return
     */
    @RequestMapping("/uploadBackPath")
    @ResponseBody
    public Map<String, Object> uploadBackPath(HttpServletRequest request) {

        int i = posterService.selectMaxId();//获取最大的id
        PjPoster pjPoster = posterService.selectPjPosterById(i);
        if (pjPoster != null) {
            return TaotaoResult.jsonBack(1, pjPoster.getPoster_url());
        } else {
            return null;
        }
    }

    /**
     * 删除
     * @param id
     * @return
     */
    @RequestMapping("/deletePoster")
    @ResponseBody
    public Map<String, Object> deletePoster(Integer id) {
        try {
            posterService.deletePjPoster(id);//删除
            return TaotaoResult.jsonBack(1, "成功");
        } catch (Exception e) {
            e.printStackTrace();
            log.info("删除广告名称失败。URL:/poster/deletePoster");
            return TaotaoResult.jsonBack(2, "失败");
        }
    }


}
