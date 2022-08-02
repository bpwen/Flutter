/*
 * @Name: GridView.builder 列表组件
 * @Author: bpwen.cn
 * @Date: 2022-01-10 09:39:23
 * @LastEditors: VSCode
 * @LastEditTime: 2022-01-18 15:46:30
 */
import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class Bpw_list_GridView_builder extends StatefulWidget {
    final double height;
    final int crossAxisCount;
    List data;
    final String dataTitleName;
    final String dataImgUrl;
    final int titleMaxLines;

    final Color color;
    final double paddingLeft;
    final double paddingTop;
    final double paddingRight;
    final double paddingBottom;

    final double mainAxisSpacing;
    final double crossAxisSpacing;
    final double childAspectRatio;

    final double imgWidth;
    final double imgHeight;

    final ScrollPhysics? physics;

    final double fontSize;

    Bpw_list_GridView_builder({
        Key? key,
        this.height =  0,   //容器高度
        this.crossAxisCount = 2,    //一行Widget数量
        this.data = const [],
        this.dataTitleName = 'title',  //data里面标题字段名
        this.dataImgUrl = 'imageUrl',  //data里面标题字段名
        this.titleMaxLines = 1, //标题显示几行

        //外边框容器间距
        this.color = Colors.transparent,
        this.paddingLeft = 0.0,
        this.paddingTop = 0.0,
        this.paddingRight = 0.0,
        this.paddingBottom = 0.0,

        this.mainAxisSpacing = 0.0,//垂直widget间距
        this.crossAxisSpacing = 0.0,//水平widget间距
        this.childAspectRatio = 1, //宽度和高度的比例

        this.imgWidth = 65.0,
        this.imgHeight = 65.0,

        this.physics = const NeverScrollableScrollPhysics(),

        this.fontSize = 16.0, //标题文字大小

    }) : super(key: key);

    @override
    _Bpw_list_GridView_builder createState() => _Bpw_list_GridView_builder();
}

// ignore: camel_case_types
class _Bpw_list_GridView_builder extends State<Bpw_list_GridView_builder> {

    Widget _getListData(context, index){
        return Column(
            children: <Widget>[
                Image.network(
                //Image.asset(
                    widget.data[index][widget.dataImgUrl],
                    fit: BoxFit.cover,
                    width: widget.imgWidth,
                    height: widget.imgHeight,
                ),
                Text(
                    widget.data[index][widget.dataTitleName],
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                    maxLines: widget.titleMaxLines,
                    style: TextStyle(fontSize: widget.fontSize),
                )
            ]
        );
    }

    @override
    Widget build(BuildContext context) {
        return Container(
            height: widget.height != 0 ? widget.height : null,
            color: widget.color,
            padding: EdgeInsets.only(
                left: widget.paddingLeft,
                top: widget.paddingTop,
                right: widget.paddingRight,
                bottom: widget.paddingBottom
            ),
            child: GridView.builder(
                shrinkWrap:true,//包含可滚动控件时自适应宽高。
                physics: widget.physics, //取消滚动
                padding: const EdgeInsets.all(0.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: widget.crossAxisCount,//一行Widget数量
                    mainAxisSpacing: widget.mainAxisSpacing,//垂直widget间距
                    crossAxisSpacing: widget.crossAxisSpacing,//水平widget间距
                    childAspectRatio: widget.childAspectRatio //宽度和高度的比例
                ),
                itemCount: widget.data.length,
                itemBuilder: _getListData
            )
        );
    }
}