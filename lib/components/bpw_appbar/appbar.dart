// ignore_for_file: avoid_print

/*
 * @Name: 头部导航
 * @Author: bpwen.cn
 * @Date: 2022-01-20 11:24:54
 * @LastEditors: VSCode
 * @LastEditTime: 2022-01-20 11:27:13
 */

import 'package:flutter/material.dart';
import '/components/config.dart';

class appbar extends StatelessWidget {
    const appbar({Key? key}) : super(key: key);
    @override
    Widget build(BuildContext context) {
        return AppBar(
            title: const Bpw_search(),
            iconTheme: const IconThemeData(
                color: Colors.black, //修改颜色
            ),
            centerTitle: true,
            backgroundColor: Global.nav_Color,
            elevation: 4.0,
            leadingWidth: 80.0,
            leading: Container(
                alignment: Alignment.centerLeft,
                child: ElevatedButton.icon(
                    icon: const Icon(Icons.location_on, color: Colors.black),
                    label: const Text("深圳"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        foregroundColor: MaterialStateProperty.all(Colors.black),
                        textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 16)),
                        shadowColor: MaterialStateProperty.all(Colors.transparent),
                        padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0)),
                    ),
                    onPressed: () {
                        print("点击了相关城市");
                    }
                ),
            ),
        );
    }
}