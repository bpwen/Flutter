// ignore_for_file: avoid_print, constant_identifier_names, prefer_final_fields

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

//StatelessWidget 无状态widget
class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'welcome',
            home: Scaffold(
                appBar: AppBar(
                    title: const Text('首页'),
                ),
                body: const Center(child: ShopTabBarWidget()),
                bottomNavigationBar: const BottomNavigationWidget(),
            ),
        );
    }
}

class ShopTabBarWidget extends StatefulWidget {
    const ShopTabBarWidget({Key? key}) : super(key: key);

    @override
    ShopTabBarWidgetState createState() => ShopTabBarWidgetState();
}

class ShopTabBarWidgetState extends State<ShopTabBarWidget>
    with SingleTickerProviderStateMixin {
    late TabController tabController;
    var tabs = <Text>[];

    @override
    void initState() {
        super.initState();
        tabs = <Text>[
            const Text('儿童'),
            const Text('女装'),
            const Text('百货'),
            const Text('美食'),
            const Text('美妆'),
            const Text('美妆1'),
            const Text('美妆2'),
        ];

        tabController = TabController(length: tabs.length, vsync: this);
        //.addListenter 可以对 TabController 增加监听，每次发生切换，都能够走到方法中
        tabController.addListener(() {
            print(tabController.toString());
            print(tabController.index);
            print(tabController.length);
            print(tabController.previousIndex);
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Column(
                children: <Widget>[
                    ConstrainedBox(
                        constraints: BoxConstraints(
                            minWidth: double.infinity,
                            minHeight: const Size.fromHeight(kMinInteractiveDimension).height,
                        ),
                        child: Container(
                            color: Colors.blue,
                            child: TabBar(
                                tabs: tabs,
                                controller: tabController,
                                onTap: (int index) {
                                    print('Selected......$index');
                                },
                                unselectedLabelColor:
                                Colors.white, //设置未选中时的字体颜色，tabs里面的字体样式优先级最高
                                unselectedLabelStyle:
                                const TextStyle(fontSize: 16), //设置未选中时的字体样式，tabs里面的字体样式优先级最高
                                labelColor: Colors.red, //设置选中时的字体颜色，tabs里面的字体样式优先级最高
                                labelStyle:
                                const TextStyle(fontSize: 16.0), //设置选中时的字体样式，tabs里面的字体样式优先级最高
                                isScrollable:true, //isScrollable 默认为false 里面标题平分显示 ；true 可以滚动不平分显示
                                indicatorColor: Colors.red, //选中下划线的颜色
                                indicatorSize: TabBarIndicatorSize
                                    .label, //选中下划线的长度，label时跟文字内容长度一样，tab时跟一个Tab的长度一样
                                indicatorWeight: 4.0, //选中下划线的高度，值越大高度越高，默认为2。0
                            ),
                        ),
                    ),
                    Expanded(
                        child: TabBarView(
                            controller: tabController,
                            children: const <Widget>[
                                ListViewContnet(),
                                ListViewContnet(),
                                ListViewContnet(),
                                ListViewContnet(),
                                ListViewContnet(),
                                ListViewContnet(),
                                ListViewContnet(),
                            ],
                        )),
                ],
            ),
        );
    }
}

const TITLE = '标题标题标题标题标题标题标题';

class ListViewContnet extends StatelessWidget {
    const ListViewContnet({Key? key}) : super(key: key);

//   ListViewContnet({Key key}) : super(key: key);
    @override
    Widget build(BuildContext context) {
        return ListView(
            children: const <Widget>[
                ListTile(title: Text(TITLE)),
                ListTile(title: Text(TITLE)),
                ListTile(title: Text(TITLE)),
                ListTile(title: Text(TITLE)),
                ListTile(title: Text(TITLE)),
                ListTile(title: Text(TITLE)),
                ListTile(title: Text(TITLE)),
                ListTile(title: Text(TITLE)),
                ListTile(title: Text(TITLE)),
                ListTile(title: Text(TITLE)),
            ],
        );
    }
}

class BottomNavigationWidget extends StatefulWidget {
    const BottomNavigationWidget({Key? key}) : super(key: key);

    @override
    State<StatefulWidget> createState() => BottomNavigationWidgetState();
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
    int _currentIndex = 0;

    List<BottomNavigationBarItem> _barItem = [
        const BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
        const BottomNavigationBarItem(icon: Icon(Icons.list), label: '新闻'),
        const BottomNavigationBarItem(icon: Icon(Icons.people), label: '我的'),
        const BottomNavigationBarItem(icon: Icon(Icons.phone), label: '隐私'),
    ];

    @override
    Widget build(BuildContext context) {
        return BottomNavigationBar(
            items: _barItem,
            currentIndex: _currentIndex,
            onTap: (int index) {
                setState(() {
                    _currentIndex = index;
                });
            },
            selectedItemColor: Colors.amber[800],
            unselectedItemColor: Colors.grey,
            selectedFontSize: 12.0,
            type: BottomNavigationBarType.fixed,
        );
    }
}
