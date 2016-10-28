package com.taotao.controller.test;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

/**
 * TITLE:
 * USER:TAOTK
 * DATA:2016/9/27
 * TIME:10:58
 * COMPANY:www.51pjia.com
 */
@Controller
public class TestController {

    @RequestMapping("/redis")
    public void testJedis() throws Exception {

        // 1、使用JedisPool对象创建连接，需要指定服务器的ip及端口
        JedisPool jedisPool = new JedisPool("192.168.3.237", 6379);
        // 2、从连接池中获得连接，Jedis对象。
        Jedis jedis = jedisPool.getResource();
        // 3、使用jedis对象操作redis
        String result = jedis.get("111");
        System.out.println(result);
        // 4、每次使用jedis后需要关闭，连接池回收资源。
        jedis.close();
        // 5、程序结束前关闭连接池。
        jedisPool.close();
    }


}
