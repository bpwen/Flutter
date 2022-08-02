/*
 * @Name: 路由配置
 * @Author: bpwen.cn
 * @Date: 2022-01-10 09:39:23
 * @LastEditors: VSCode
 * @LastEditTime: 2022-01-24 09:51:50
 */

// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../views/Tabs.dart';
import '../views/AppBarDemo.dart';

import '../views/main/index.dart';

import '../views/text.dart';

//配置路由
final Map<String,Function> routes={
    '/Tabs':(context) => Tabs(),
    '/appBarDemo':(context) => AppBarDemoPage(),
    '/':(context) => Homes(),
    '/text':(context) => Categorypage()
};

//固定写法
// ignore: prefer_function_declarations_over_variables, body_might_complete_normally_nullable
var onGenerateRoute = (RouteSettings settings) {
    // 统一处理
    final String? name = settings.name;
    final Function? pageContentBuilder = routes[name];
    if (pageContentBuilder != null) {
        if (settings.arguments != null) {
            final Route route = MaterialPageRoute(
                builder: (context) => pageContentBuilder(context, arguments: settings.arguments)
            );
            return route;
        }else{
            final Route route = MaterialPageRoute(
                builder: (context) =>
                    pageContentBuilder(context)
                );
            return route;
        }
    }
};