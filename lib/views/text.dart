import 'package:flutter/material.dart';

class Categorypage extends StatefulWidget {
    @override
    _CategorypageState createState() => _CategorypageState();
}

class _CategorypageState extends State<Categorypage> {
    @override
    Widget build(BuildContext context) {
        return DefaultTabController(
            length: 8,
            child: Scaffold(
                appBar: AppBar(
                    title: Row(
                        children: const [
                            Expanded(
                                child: TabBar(
                                    indicatorColor: Colors.red,
                                    isScrollable: true,//多个按钮可以滑动
                                    tabs: <Widget>[
                                        Tab(text: "热门1"),
                                        Tab(text: "推荐2"),
                                        Tab(text: "热门3"),
                                        Tab(text: "推荐4"),
                                        Tab(text: "热门5"),
                                        Tab(text: "推荐6"),
                                        Tab(text: "热门7"),
                                        Tab(text: "推荐8"),
                                    ]
                                ),
                            ),
                        ],
                    ),
                    backgroundColor: Colors.green,
                ),
                body: TabBarView(
                    children: <Widget>[
                        ListView(
                            children: const [
                                ListTile(
                                    title: Text("第一个tab"),
                                ),
                                ListTile(
                                    title: Text("第一个tab"),
                                ),
                            ],
                        ),
                        ListView(
                            children: const [
                                ListTile(
                                    title: Text("第二个tab"),
                                ),
                                ListTile(
                                    title: Text("第二个tab"),
                                ),
                            ],
                        ),
                        ListView(
                            children: const [
                                ListTile(
                                    title: Text("第三个tab"),
                                ),
                                ListTile(
                                    title: Text("第二个tab"),
                                ),
                            ],
                        ),
                        ListView(
                            children: const [
                                ListTile(
                                    title: Text("第四个tab"),
                                ),
                                ListTile(
                                    title: Text("第二个tab"),
                                ),
                            ],
                        ),
                        ListView(
                            children: const [
                                ListTile(
                                    title: Text("第五个tab"),
                                ),
                                ListTile(
                                    title: Text("第二个tab"),
                                ),
                            ],
                        ),
                        ListView(
                            children: const [
                                ListTile(
                                    title: Text("第6个tab"),
                                ),
                                ListTile(
                                    title: Text("第二个tab"),
                                ),
                            ],
                        ),
                        ListView(
                            children: const [
                                ListTile(
                                    title: Text("第7个tab"),
                                ),
                                ListTile(
                                    title: Text("第二个tab"),
                                ),
                            ],
                        ),
                        ListView(
                            children: const [
                                ListTile(
                                    title: Text("第8个tab"),
                                ),
                                ListTile(
                                    title: Text("第二个tab"),
                                ),
                            ],
                        )
                    ],
                ),
            ),
        );
    }
}

