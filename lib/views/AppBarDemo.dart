/*
 * @Name: 
 * @Author: bpwen.cn
 * @Date: 2022-01-12 15:25:41
 * @LastEditors: VSCode
 * @LastEditTime: 2022-01-12 17:55:44
 */

import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:2 ,
      child: Scaffold(
          appBar: AppBar(
            title:Text("AppBarDemoPage"), 
            // backgroundColor: Colors.red, 
            centerTitle:true,
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   onPressed: (){
            //     print('menu');
            //   },
            // ), 
            // actions: <Widget>[
            //   IconButton(
            //     icon: Icon(Icons.search),
            //     onPressed: (){
            //       print('search');
            //     },
            //   ),
            //   IconButton(
            //     icon: Icon(Icons.settings),
            //     onPressed: (){
            //       print('settings');
            //     },
            //   )
            // ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: "热门"),
                Tab(text: "推荐")
              ],
            ),


          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(
                    title:Text("第一个tab")
                  ),
                  ListTile(
                    title:Text("第一个tab")
                  ),
                  ListTile(
                    title:Text("第一个tab")
                  )
                ],
              ),
               ListView(
                children: <Widget>[
                  ListTile(
                    title:Text("第二个tab")
                  ),
                  ListTile(
                    title:Text("第二个tab")
                  ),
                  ListTile(
                    title:Text("第二个tab")
                  )
                ],
              )
            ],
          ),
        ),
    );
  }
}