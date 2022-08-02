/*
 * @Name: 
 * @Author: bpwen.cn
 * @Date: 2022-01-19 11:04:37
 * @LastEditors: VSCode
 * @LastEditTime: 2022-01-19 17:48:16
 * @url: 
 */
// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner:false,  //去掉debug图标
            initialRoute: '/',     //初始化的时候加载的路由
            //theme: ThemeData(
            //    platform: TargetPlatform.iOS, // 使页面跳转时从左至右滑动
            //),
            onGenerateRoute: onGenerateRoute
        );
    }
}