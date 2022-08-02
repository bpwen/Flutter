// ignore_for_file: unnecessary_this

/*
 * @Name: 
 * @Author: bpwen.cn
 * @Date: 2022-01-12 15:25:41
 * @LastEditors: VSCode
 * @LastEditTime: 2022-01-12 16:48:01
 * @url: 
 */

// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key? key,this.index=0}) : super(key: key);

  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {

  int _currentIndex;
  _TabsState(this._currentIndex);

  List _pageList=[
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Flutter Demo"),
        // ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,   //配置对应的索引值选中
          onTap: (int index){
              setState(() {  //改变状态
                  this._currentIndex=index;
              });
          },
          iconSize:36.0,      //icon的大小
          fixedColor:Colors.red,  //选中的颜色  
          type:BottomNavigationBarType.fixed,   //配置底部tabs可以有多个按钮
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "首页"
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "分类"              
            ),
            
             BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "设置"                
            )
          ],
        ),
      );
  }
}