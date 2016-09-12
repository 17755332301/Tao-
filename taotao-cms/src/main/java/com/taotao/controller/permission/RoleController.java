package com.taotao.controller.permission;

import com.taotao.common.BaseController;
import com.taotao.common.TaotaoResult;
import com.taotao.model.PjModule;
import com.taotao.model.PjRole;
import com.taotao.service.PermissionService;
import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * 角色的控制层
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/permission")
public class RoleController extends BaseController {
	
   Logger log = LoggerFactory.getLogger(RoleController.class);
   
   @Autowired
   private PermissionService permissionService;

    /**
     * 查询所有的角色
     * @param model
     * @return
     */
    @SuppressWarnings("all")
   @RequestMapping("/selectAllRole")
   public String selectAllRole(Model model){
	   
	   try {
		List<PjRole> allRole = permissionService.selectAllRole();
		   for (PjRole pjRole : allRole) {
			 int userCount = permissionService.userCount(pjRole.getId());
		   	 pjRole.setRoleCount(userCount);
		}
		   model.addAttribute("role", allRole);
		   return "permission/admin_Competence";
	} catch (Exception e) {
		e.printStackTrace();
		log.info("查询角色错误。URL:/permission/selectAllRole");
		return "error";
	}
   }

    /**
     * 查询所有的用户通过json返回
     * @param model
     * @return
     */
    @SuppressWarnings("all")
    @RequestMapping("/selectAllRoleBackJson")
    @ResponseBody
    public List<PjRole> selectAllRoleBackJson(Model model){

        try {
            List<PjRole> allRole = permissionService.selectAllRole();
            for (PjRole pjRole : allRole) {
                int userCount = permissionService.userCount(pjRole.getId());
                pjRole.setRoleCount(userCount);
            }
            return allRole;
        } catch (Exception e) {
            e.printStackTrace();
            log.info("查询角色错误。URL:/permission/selectAllRole");
            return null;
        }
    }

	//给角色分配权限
	@RequestMapping("/showPermissionPage")
	public String showPermissionPage(@Param("id")Integer id, Model model){
        List<PjModule> pjModules = permissionService.selectModuleList();
        List<PjModule> pjModules1 = permissionService.selectAllRoleModuleByRoleId(id);
        for(PjModule pcp1: pjModules){
			pcp1.setName(pcp1.getMod_name());
			if(pcp1.getUrl().equals("#")){
				pcp1.setOpen(true);
			}
			for(PjModule pcp2: pjModules1){
				if(pcp2.getId()==pcp1.getId()){
					pcp1.setChecked(true);
				}
			}
		}
		String json = gson.toJson(pjModules).toString();
		model.addAttribute("pjCooPermissionList",json);
		model.addAttribute("id",id);
		return "permission/sendroleforpermission";
	}

    /**
     * 分配权限
     * @param id
     * @param str
     * @return
     */
    @RequestMapping("/sendRolePermission")
    @ResponseBody
    public Map<String,Object> sendRolePermission(@Param("id")Integer id, @Param("str")String str){
        try {
            //先删除所有的权限控制  （与角色相关的权限）
            permissionService.deletePermissionByRoleId(id);
            //给选定的角色重新分配权限
            permissionService.sendPermissonForRoleByRoleId(id,str);
            return TaotaoResult.jsonBack(1,"修改权限成功！");
        } catch (Exception e) {
            e.printStackTrace();
            return TaotaoResult.jsonBack(2,"修改权限失败！");
        }
    }

    /**
     * 添加角色
     * @return
     */
    @RequestMapping("/insertRole")
    @ResponseBody
    public Map<String,Object> insertRole(HttpServletRequest request){
        try {
            String roleName = request.getParameter("角色名称");
            String roleDesc = request.getParameter("角色说明");
            PjRole pjRole = new PjRole();
            pjRole.setRole_name(roleName);
            pjRole.setRemark(roleDesc);
            //添加用户
            permissionService.insertRole(pjRole);
            return TaotaoResult.jsonBack(1,"添加成功！");
        } catch (Exception e) {
            e.printStackTrace();
            return TaotaoResult.jsonBack(2,"添加失败！");
        }


    }



}
