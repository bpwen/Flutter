/*
 * @Name: ListView.builder 列表组件
 * @Author: bpwen.cn
 * @Date: 2022-01-15 16:21:06
 * @LastEditors: VSCode
 * @LastEditTime: 2022-01-18 17:11:02
 */
import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class Bpw_list_ListView_builder extends StatefulWidget {
    final List data;
    final double width;
    final double height;
    final Color color;
    final Color itemColor;
    final double marginLeft;
    final double imgWidth;
    final double imgHeight;
    final double paddingLeft;
    final double paddingTop;
    final double paddingRight;
    final double paddingBottom;

    const Bpw_list_ListView_builder({
        Key? key,
        this.data = const [], //JSOn
        this.color = Colors.transparent,//背景
        this.width = 150.0,//宽度
        this.height = 150.0,//高度
        //this.itemColor = Colors.transparent,//容器里面背景
        this.itemColor = Colors.transparent,//容器里面背景
        this.marginLeft = 10.0,//右边间距
        this.imgWidth = 130.0,
        this.imgHeight = 90.0,
        //外边框容器间距
        this.paddingLeft = 0.0,
        this.paddingTop = 0.0,
        this.paddingRight = 0.0,
        this.paddingBottom = 0.0,
    }) : super(key: key);

    @override
     _Bpw_list_ListView_builder createState() => _Bpw_list_ListView_builder();
}

// ignore: camel_case_types
class _Bpw_list_ListView_builder extends State<Bpw_list_ListView_builder> {
    Widget _getData(context, index){
        return Column(
            children: <Widget>[
                Container(
                    width: widget.width,
                    alignment: Alignment.centerLeft,
                    color: widget.itemColor,
                    margin: (widget.data.length - 1) != index ? EdgeInsets.only(right: widget.marginLeft) : const EdgeInsets.all(0.0),
                    padding: EdgeInsets.only(
                        left: widget.paddingLeft,
                        top: widget.paddingTop,
                        right: widget.paddingRight,
                        bottom: widget.paddingBottom
                    ),
                    child: Column(
                        children: <Widget>[
                            Image.network(
                                widget.data[index]["imageUrl"],
                                fit: BoxFit.contain,
                                //width: widget.imgWidth,
                                //height: (widget.height - 35),
                            ),
                            const SizedBox(height: 5.0),
                            Text(
                                widget.data[index]["title"],
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.clip,
                                maxLines: 1,
                            ),
                            const SizedBox(height: 5.0)
                        ],
                    )
                )
            ]
        );
    }

    @override
    Widget build(BuildContext context) {
        return Container(
            height: widget.height,
            alignment: Alignment.centerLeft,
            color: widget.color,
            child:ListView.builder(
                shrinkWrap: true,
                scrollDirection : Axis.horizontal,
                itemCount: widget.data.length,
                itemBuilder:_getData
            )
        );
    }
}