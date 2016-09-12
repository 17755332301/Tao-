package com.taotao.controller.permission;

import com.taotao.common.TaotaoResult;
import com.taotao.model.PjModule;
import com.taotao.service.PermissionService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * TITLE:
 * USER:TAOTK
 * DATA:2016/9/9
 * TIME:16:07
 * COMPANY:www.51pjia.com
 */
@Controller
@RequestMapping("/permission")
public class ModuleController {

    //日志
    Logger log = LoggerFactory.getLogger(ModuleController.class);

    @Autowired
    private PermissionService permissionService;

    /**
     * 查询所有的模块
     * @param model
     * @return
     */
    @RequestMapping("/selectAllModule")
    public String selectAllModule(Model model){

        List<PjModule> pjModules = permissionService.selectModuleList();
        model.addAttribute("module",pjModules);
        return "permission/admin_Module";
    }


    /**
     *查询主要的菜单
     * @param model
     * @return
     */
    @RequestMapping("/selectMainModule")
    @ResponseBody
    public List<PjModule> selectMainModule(Model model){
        try {
            //查询主菜单
            List<PjModule> mainModule = permissionService.selectAllMainModule();
            return mainModule;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }


    /**
     * 添加功能模块
     * @param pjModule
     * @return
     */
    @RequestMapping("/insertModule")
    @ResponseBody
    public Map<String,Object> insertModule(PjModule pjModule){

        try {
            if(pjModule.getPid() == 0){
                pjModule.setModu_type(0);
            }else{
                pjModule.setModu_type(1);
            }
            //添加
            permissionService.insertModule(pjModule);
            return TaotaoResult.jsonBack(1,"添加功能权限成功！");
        } catch (Exception e) {
            e.printStackTrace();
            log.info("添加功能权限失败。URL：/permission/insertModule");
            return TaotaoResult.jsonBack(2,"添加功能权限失败！");
        }


    }

}
