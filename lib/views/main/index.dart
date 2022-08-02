// ignore_for_file: use_key_in_widget_constructors, unused_import

/*
 * @Name: 首页
 * @Author: bpwen.cn
 * @Date: 2022-01-10 09:39:23
 * @LastEditors: VSCode
 * @LastEditTime: 2022-01-22 10:59:23
 */

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/components/config.dart';

import 'page_home.dart';
import 'page_release.dart';
import 'page_my.dart';

class Homes extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {
        return _HomesState();
    }
}

class _HomesState extends State<Homes> {
    int _currentIndex = 0;
    final List<Widget> _children = [Home(), Release(), My()];

    final List<BottomNavigationBarItem> _list = <BottomNavigationBarItem>[
        const BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
        const BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: '发布'),
        const BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的'),
    ];

    @override
    Widget build(BuildContext context) {
        SystemChrome.setSystemUIOverlayStyle(
            SystemUiOverlayStyle.light.copyWith(
                systemNavigationBarIconBrightness: Brightness.dark,
                systemNavigationBarColor: Colors.black,
                statusBarIconBrightness: Brightness.dark,
                statusBarColor: Colors.black,
            ),
        );

        return SafeArea(
            child: Scaffold(
                body: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                        // 触摸收起键盘
                        FocusScope.of(context).requestFocus(FocusNode());
                    },
                    child: _children[_currentIndex],
                ),
                bottomNavigationBar: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    onTap: onTabTapped,
                    currentIndex: _currentIndex,
                    items: _list,
                ),
            ),
        );
    }

    void onTabTapped(int index) {
        setState(() {
            _currentIndex = index;
        });
    }
}