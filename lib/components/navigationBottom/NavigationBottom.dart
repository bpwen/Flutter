import 'package:flutter/material.dart';

class NavigationBottom extends StatelessWidget{
    int _currentIndex = 0;
    @override
    Widget build(BuildContext context) {
        return BottomNavigationBar( // 底部导航
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
                BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: '发布'),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的'),
            ],
            currentIndex: _currentIndex,
            fixedColor: Colors.blue,
            //onTap: onTabTapped,
        );
    }

//    void onTabTapped(int index) {
//        setState(() {
//            ++index;
//        });
//    }
}