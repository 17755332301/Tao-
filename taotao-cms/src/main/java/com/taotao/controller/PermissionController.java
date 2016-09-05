package com.taotao.controller;

import com.taotao.model.PjModule;
import com.taotao.model.PjUser;
import com.taotao.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * TITLE:权限的控制层
 * USER:TAOTK
 * DATA:2016/9/5
 * TIME:10:24
 * COMPANY:www.51pjia.com
 */
@Controller
public class PermissionController {

    @Autowired
    private PermissionService permissionService;


    @RequestMapping("/")
    public String login() {
        return "login";
    }

    /**
     * 登录逻辑
     *
     * @param request
     * @return 转到登录后的index页面
     */
    @RequestMapping("/dologin")
    @ResponseBody
    public Map<String, Object> doLogin(HttpServletRequest request) {

        String userName = request.getParameter("登录名");
        String password = request.getParameter("密码");
        PjUser pjUser = new PjUser();
        pjUser.setUser_name(userName);
        pjUser.setUser_password(password);
        System.out.println(userName);
        System.out.println(password);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("data",2);
        try {

            PjUser user = permissionService.selectUserByInfo(pjUser);
            if (user == null) {
                map.put("data", 1);
                return map;
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                map.put("data", 2);
                return map;
            }
        } catch (final Exception e) {
            e.printStackTrace();
            map.put("data", 1);
            return map;
        }

    }


    @RequestMapping("/index")
    public String index(HttpServletRequest request ,Model model){
        //从session域中获取数据
       // PjUser user = (PjUser)request.getSession().getAttribute("user");
        //查询当前登录人的权限
        //List<PjModule> pjModule = permissionService.selectAllModuleById(2);



        //-------------查询用户的所有角色-----------
        //===================================处理用户的权限逻辑逻辑   开始============================
       /* String ctx = request.getContextPath();
        List<PjModule> firstMean = new ArrayList<PjModule>();
        StringBuilder sbf = new StringBuilder();
        for(PjModule module: pjModule){
            if(module.getPid()==0){
                firstMean.add(module);
            }
        }

        for(PjModule module:firstMean){

                sbf.append("<li>\n" +
                        "\t\t\t\t\t<a href="+module.getUrl()+" class=\"dropdown-toggle\"><i class=\"icon-list\"></i><span class=\"menu-text\">"+module.getMod_name()+"</span><b class=\"arrow icon-angle-down\"></b></a><ul class=\"submenu\">\n" +
                        "\"");

            for(PjModule module2: pjModule){
                if(module2.getPid()==module.getId()){
                    sbf.append("<li class=\"home\"><a href=\"javascript:void(0)\" name=\"transaction.html\" title="+module2.getMod_name()+"  class=\"iframeurl\"><i class=\"icon-double-angle-right\"></i>"+module2.getMod_name()+"</a></li>");
                }
            }
            sbf.append(" </ul></li> ");
        }
        model.addAttribute("meanString",sbf.toString());
        model.addAttribute("userName", user.getUser_name());*/
        //===================================处理用户的权限逻辑逻辑   结束============================
        return "index";
    }








}
