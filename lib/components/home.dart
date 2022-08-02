//https://www.jianshu.com/p/3881c8e159fd
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
    const Home({Key? key}) : super(key: key);

    @override
    State<StatefulWidget> createState() {
        return CustomScrollView1State();
    }
}

class CustomScrollView1State extends State<Home>
    with SingleTickerProviderStateMixin {
    final List<Widget> _tabs = <Widget>[
        const Tab(
            text: "Home",
        ),
        const Tab(
            text: "Profile",
        )
    ];

    final List<Widget> _tabViews = <Widget>[
        const Center(child: Text("Home")),
        const Center(child: Text("Profile")),
    ];

    late TabController _tabController;

    @override
    void initState() {
        super.initState();
        _tabController = TabController(length: _tabs.length, vsync: this);
    }

    @override
    void dispose() {
        _tabController.dispose();
        super.dispose();
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: CustomScrollView(
                slivers: <Widget>[
                    SliverPersistentHeader(
                        floating: true,
                        pinned: true,
                        delegate: SliverCustomHeaderDelegate(
                            collapsedHeight: 43.0,
                            expandedHeight: 220.0,
                            paddingTop: 27.0,
                            coverImgUrl:
                            "http://img1.mukewang.com/5c18cf540001ac8206000338.jpg",
                            title: "练习",
                        ),
                    ),
                    SliverFillRemaining(
                        child: TabBarView(
                            controller: _tabController,
                            children: _tabViews,
                        ),
                    ),
                ],
            ),
        );
    }
}

class SliverCustomHeaderDelegate extends SliverPersistentHeaderDelegate {
    final double collapsedHeight;

    ///折叠的高度
    final double expandedHeight;

    ///展开的高度
    final double paddingTop;
    final String coverImgUrl;
    final String title;

    SliverCustomHeaderDelegate({
        required this.collapsedHeight,
        required this.expandedHeight,
        required this.paddingTop,
        required this.coverImgUrl,
        required this.title,
    });

    Color makeStickyHeaderBgColor(shrinkOffset) {
        final int alpha = (shrinkOffset / (maxExtent - minExtent) * 255)
            .clamp(0, 255)
            .toInt();
        return Color.fromARGB(alpha, 255, 255, 255);
    }

    Color makeStickyHeaderTextColor(shrinkOffset, isIcon) {
        if (shrinkOffset <= 50) {
            return isIcon ? Colors.white : Colors.transparent;
        } else {
            final int alpha = (shrinkOffset / (maxExtent - minExtent) * 255)
                .clamp(0, 255)
                .toInt();
            return Color.fromARGB(alpha, 0, 0, 0);
        }
    }

    @override
    Widget build(
        BuildContext context, double shrinkOffset, bool overlapsContent) {
        return SizedBox(
            height: maxExtent,
            width: MediaQuery.of(context).size.width,
            child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                    // 背景图
                    Image.network(coverImgUrl, fit: BoxFit.cover),
                    // 收起头部
                    Positioned(
                        left: 0,
                        right: 0,
                        top: 0,
                        child: Container(
                            color: makeStickyHeaderBgColor(shrinkOffset), // 背景颜色
                            child: SafeArea(
                                bottom: false,
                                child: Container(
                                    height: collapsedHeight,
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                            IconButton(
                                                icon: Icon(
                                                    Icons.arrow_back_ios,
                                                    color: makeStickyHeaderTextColor(
                                                        shrinkOffset, true), // 返回图标颜色
                                                ),
                                                onPressed: () => Navigator.pop(context),
                                            ),
                                            Text(
                                                title,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                    color: makeStickyHeaderTextColor(
                                                        shrinkOffset, false), // 标题颜色
                                                ),
                                            ),
                                            IconButton(
                                                icon: Icon(
                                                    Icons.share,
                                                    color: makeStickyHeaderTextColor(
                                                        shrinkOffset, true), // 分享图标颜色
                                                ),
                                                onPressed: () {},
                                            ),
                                        ],
                                    ),
                                ),
                            ),
                        ),
                    ),
                ],
            ),
        );
    }

    @override
    double get maxExtent => expandedHeight;

    @override
    double get minExtent => collapsedHeight + paddingTop;

    @override
    bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
        return true;
    }
}
