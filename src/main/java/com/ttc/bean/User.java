/*
 * Copyright (c)Shanghai Easy Deal Foreign Currency Exchange Co., Ltd.
 */
package com.ttc.bean;

import java.io.Serializable;

/**
 * @author benny
 * @date 2016/5/5
 * @description
 */
public class User implements Serializable{
    private int id;
    private String name;
    private String sex;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }
}
