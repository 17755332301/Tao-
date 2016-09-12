package com.taotao.controller.permission;

import com.taotao.common.TaotaoResult;
import com.taotao.model.PjRole;
import com.taotao.model.PjUser;
import com.taotao.model.PjUserRole;
import com.taotao.service.PermissionService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * TITLE:人员的控制层
 * USER:TAOTK
 * DATA:2016/9/6
 * TIME:13:46
 * COMPANY:www.51pjia.com
 */
@Controller
@RequestMapping("/permission")
public class UserController {

    Logger log = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private PermissionService permissionService;

    /**
     * 查询所有的用户
     * @param model
     * @return
     */
    @RequestMapping("/selectAllUser")
    public String  selectAllUser(Model model){
        try {
        	//查询所有的用户
            List<PjUser> pjUsers = permissionService.selectAllUser();
            if(pjUsers != null && pjUsers.size() >0){
            	for (PjUser pjUser : pjUsers) {
                PjRole role = permissionService.selectRoleById(pjUser.getRoleId());
                pjUser.setRole_name(role.getRole_name());
    			}
            }
            //查询所有的角色
            List<PjRole> role = permissionService.selectAllRole();
            for (PjRole pjRole : role) {
            	int userCount = permissionService.userCount(pjRole.getId());
            	pjRole.setRoleCount(userCount);
			}
            model.addAttribute("allRole", pjUsers.size());
            model.addAttribute("role",role);
            model.addAttribute("user",pjUsers);
            return "permission/administrator";
        } catch (Exception e) {
            e.printStackTrace();
            log.info("查询所有的用户错误。URL:/permission/selectAllUser");
            return "error";
        }
    }

    /**
     * 添加用户
     * @param
     * @return
     */
    @RequestMapping("/addUser")
    @ResponseBody
    public Map<String,Object> addUser(PjUser pjUser){
        try {
            //添加用户
            pjUser.setEnter_time(new Date());//创建时间
            pjUser.setIs_use(1);//使用
            permissionService.insertUser(pjUser);//添加一个用户

            PjUserRole userRole = new PjUserRole();
            int maxId = permissionService.selectMaxId();
            userRole.setUser_id(maxId);
            userRole.setRole_id(pjUser.getRoleId());

            permissionService.insertUserRole(userRole);//在用户和角色的中间表中加入一条数据
            return TaotaoResult.jsonBack(1,"添加用户成功");
        } catch (Exception e) {
            e.printStackTrace();
            log.info("添加用户失败,URL:/permission/addUser");
            return TaotaoResult.jsonBack(2,"添加用户失败");
        }
    }


    /**
     * 回显
     * @param id
     * @return
     */
    @RequestMapping("/editUserBack")
    @ResponseBody
    public PjUser editUserBack(Integer id){
        try {
            PjUser pjUser = permissionService.selectUserById(id);
            PjRole pjRole = permissionService.selectRoleById(pjUser.getRoleId());
            pjUser.setRole_name(pjRole.getRole_name());
            return pjUser;
        } catch (Exception e) {
            e.printStackTrace();
            log.info("编辑用户回显错误。URL:/permission/editUserBack");
            return null;
        }
    }

    /**
     * 编辑用户
     * @param pjUser
     * @return
     */
    @RequestMapping("/editUser")
    @ResponseBody
    public Map<String,Object> editUser(PjUser pjUser){

        try {
            pjUser.setUpdate_time(new Date());
            permissionService.updateUser(pjUser);
            return TaotaoResult.jsonBack(1,"编辑用户成功！");
        } catch (Exception e) {
            e.printStackTrace();
            return TaotaoResult.jsonBack(2,"编辑用户失败！");
        }

    }



}
