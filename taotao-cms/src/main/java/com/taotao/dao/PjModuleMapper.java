package com.taotao.dao;

import com.taotao.model.PjModule;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PjModuleMapper {


    /**
     * 通过用户id查询功能
     * @param id
     * @return
     */
   List<PjModule> selectAllModuleById(Integer id);


    /**
     * 查询所有的模块
     * @return
     */
    List<PjModule> selectModuleList();


    /**
     * 通过角色的id查询所有的功能模块
     * @param id
     * @return
     */
    List<PjModule> selectAllRoleModuleByRoleId(Integer id);

    /**
     * 查询所有的主菜单
     * @return
     */
    List<PjModule> selectAllMainModule();

    /**
     * 插入权限
     * @param pjModule
     * @return
     */
    int insertModule(PjModule pjModule);


}
