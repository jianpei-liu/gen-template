package com.eoma.autocoding;

import com.eoma.autocoding.common.Generator;

/**
 * 模板生成主类
 *
 * @author liujp
 * @create 2017/7/8
 * @since 1.0.0
 */
public class Main {

    public static void main(String[] args) throws Exception{
        Generator generator = new Generator();
        generator.gen("user","用户","","liujianpei");
        System.out.println("模版文件生成完毕……");
    }

}