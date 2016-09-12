package com.taotao.common;

import java.util.HashMap;
import java.util.Map;

/**
 * TITLE:
 * USER:TAOTK
 * DATA:2016/9/7
 * TIME:14:20
 * COMPANY:www.51pjia.com
 */
public class TaotaoResult {

    public static Map<String,Object> jsonBack(Integer code, Object obj){

        Map<String,Object> map = new HashMap<String, Object>();
        map.put("code",code);
        map.put("data",obj);
        return map;
    }
}
