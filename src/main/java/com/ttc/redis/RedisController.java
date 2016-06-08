/*
 * Copyright (c)Shanghai Easy Deal Foreign Currency Exchange Co., Ltd.
 */
package com.ttc.redis;

import com.ttc.bean.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.data.redis.core.RedisTemplate;

/**
 * @author benny
 * @date 2016/5/5
 * @description
 */
public class RedisController {
    protected static RedisTemplate<String, Object> redisTemplate;

    public static void main(String[] args) {
        ApplicationContext ac =  new ClassPathXmlApplicationContext("classpath:/applicationContext.xml");
        redisTemplate = (RedisTemplate) ac.getBean("redisTemplate");

        redisTemplate.opsForValue().set("dsds","dfjklsadfsjk");
        System.out.println(redisTemplate.opsForValue().get("dsds"));

        User user = new User();
        user.setId(1);
        user.setName("benny");
        user.setSex("男");
        redisTemplate.boundHashOps("keys").put("msg",  user);
        User users = (User) redisTemplate.boundHashOps("keys").get("msg");
        System.out.println(users.getId());
//        .get("msg");
//

    }

}
