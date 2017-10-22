package com.xuebusi;

import com.xuebusi.common.utils.MD5Utils;

/**
 * Created by SYJ on 2017/10/22.
 */
public class AppTest {
    public static void main(String[] args) {
        String admin = MD5Utils.md5("admin2");
        System.out.println(admin);
    }
}
