/*
 * @Name: 标题
 * @Author: bpwen.cn
 * @Date: 2022-01-15 14:04:31
 * @LastEditors: VSCode
 * @LastEditTime: 2022-01-15 15:53:58
 */

// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';

class Bpw_Title extends StatefulWidget {
    final String title;
    final double titleSize;

    final String titleRight;
    final double titleRightSize;

    final Color color;
    final double paddingLeft;
    final double paddingTop;
    final double paddingRight;
    final double paddingBottom;

    final double height;

    //左图标
    final bool iconBoot;
    final IconData icon;
    final Color iconColor;
    final double iconSize;
    final double iconMarginRight;

    //右图标
    final bool iconRightBoot;
    final IconData iconRight;
    final Color iconRightColor;
    final double iconRightSize;
    final double iconRightMarginRight;

    const Bpw_Title({
        Key? key,
        this.title = "",    //标题
        this.titleSize = 17.0,    //标题

        this.titleRight = "", //右标题
        this.titleRightSize = 17.0,    //标题

        //外边框容器间距
        this.color = Colors.transparent, //背景

        this.paddingLeft = 0.0,
        this.paddingTop = 10.0,
        this.paddingRight = 0.0,
        this.paddingBottom = 10.0,

        this.height = 30.0, //高度

        //标题头部左图标
        this.iconBoot = false, //左图标是否显示
        this.icon = Icons.favorite,
        this.iconColor = Colors.red,
        this.iconSize = 22.0,
        this.iconMarginRight = 5.0,

        //标题头部右图标
        this.iconRightBoot = false, //右图标是否显示
        this.iconRight = Icons.navigate_next,
        this.iconRightColor = Colors.grey,
        this.iconRightSize = 30.0,
        this.iconRightMarginRight = 0.0,

    }) : super(key: key);

    @override
    _Bpw_Title createState() => _Bpw_Title();
}

class _Bpw_Title extends State<Bpw_Title> {
    @override
    Widget build(BuildContext context) {
        return Container(
            alignment: Alignment.centerLeft,
            color: widget.color,
            padding: EdgeInsets.only(
                left: widget.paddingLeft,
                top: widget.paddingTop,
                right: widget.paddingRight,
                bottom: widget.paddingBottom
            ),
            child:Column(
                children: <Widget>[
                    Flex(
                        direction: Axis.horizontal,
                        children: <Widget>[
                            Expanded(
                                flex: 2,
                                child: SizedBox(
                                    height: widget.height,
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                            widget.iconBoot ? Icon(widget.icon, color: widget.iconColor, size: widget.iconSize) : const Text(""),
                                            widget.iconBoot ? SizedBox(width: widget.iconMarginRight) : const Text(""),
                                            Text(widget.title, style: TextStyle(fontSize: widget.titleSize))
                                        ]
                                    ),
                                ),
                            ),
                            Expanded(
                                flex: 1,
                                child: SizedBox(
                                    height: widget.height,
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[
                                            Text(widget.titleRight, style: TextStyle(fontSize: widget.titleRightSize)),
                                            widget.iconRightBoot ? SizedBox(width: widget.iconRightMarginRight) : const Text(""),
                                            widget.iconRightBoot ? Icon(widget.iconRight, color: widget.iconRightColor, size: widget.iconRightSize) : const Text("")
                                        ]
                                    ),
                                ),
                            ),
                        ],
                    )
                ]
            )
        );
    }
}