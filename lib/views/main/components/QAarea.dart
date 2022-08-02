// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/components/config.dart';

//问答专区
class QAarea extends StatefulWidget {
    const QAarea({Key? key}) : super(key: key);
    @override
    _QAarea createState() => _QAarea();
}
class _QAarea extends State<QAarea> {
    List<Widget> _getData(){
        List<Widget> list = [];
        for(var i=0; i< listData.length; i++){
            list.add(Container(
                width: 345.w,
                margin: i != (listData.length-1) ? EdgeInsets.only(left: 15.w, top: 15.h, right: 15.w) : EdgeInsets.only(left: 15.w, top: 15.h, right: 15.w, bottom: 20.h),
                padding: EdgeInsets.only(
                    left: 15.w,
                    top: 14.h,
                    bottom: 15.h
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(9.w)),
                    border:Border.all(width: 1.0, color: const Color.fromRGBO(0, 0, 0, 0.03)),
                ),
                child: Column(
                    children: <Widget>[
                        Row(
                            children: <Widget>[
                                Image.asset(
                                    "images/touxiang.png",
                                    fit: BoxFit.cover,
                                    width: 35.w,
                                    height: 35.w,
                                ),
                                Container(
                                    width: 200.w,
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(left: 5.w),
                                    child: Column(
                                        children: <Widget>[
                                            Container(
                                                height: 20.0,
                                                alignment: Alignment.centerLeft,
                                                child: Text("飞翔的企鹅", style: TextStyle(fontSize: 14.sp))
                                            ),
                                            SizedBox(height: 5.h),
                                            Container(
                                                height: 17.0,
                                                padding: EdgeInsets.only(left: 3.w),
                                                alignment: Alignment.centerLeft,
                                                child: Text("02-07 12:02", style: TextStyle(fontSize: 12.sp, color: const Color.fromRGBO(120, 120, 120, 1)))
                                            )
                                        ]
                                    ),
                                )
                            ]
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 12.h),
                            alignment: Alignment.centerLeft,
                            child: Text("什么是中医？", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp))
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 8.h),
                            alignment: Alignment.centerLeft,
                            child: Text("中医是中国人的生活方式，只把中医当医疗治疗来做太狭隘了，中国中医是一种 文化，中医是中国人的生活方式，只把中医当医疗治疗来做太狭隘了，中国中医是一种 文化，把中医",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 14.sp)),
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(top: 13.h),
                            child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusDirectional.circular(10)
                                ),
                                clipBehavior: Clip.antiAlias,
                                child: Image.asset(
                                    "images/top.png",
                                    width: 270.w,
                                ),
                            ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 13.h),
                            alignment: Alignment.centerLeft,
                            child: Row(
                                children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 2.h, bottom: 2.h),
                                        alignment: Alignment.centerLeft,
                                        decoration: const BoxDecoration(
                                            color: Color.fromRGBO(246, 246, 246, 1),
                                            borderRadius:BorderRadius.all(
                                                Radius.circular(8)
                                            )
                                        ),
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                                Image.asset(
                                                    "images/iocn/jksq.png",
                                                    fit: BoxFit.cover,
                                                    width: 24.w,
                                                    height: 24.w,
                                                ),
                                                SizedBox(width: 9.w),
                                                Text("健康社区", style: TextStyle(color: const Color.fromRGBO(237, 96, 82, 1), fontSize: 12.sp))
                                            ]
                                        )
                                    )
                                ]
                            )
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 13.h),
                            alignment: Alignment.centerLeft,
                            child: Flex(
                                direction: Axis.horizontal,
                                children: <Widget>[
                                    Expanded(
                                        flex: 4,
                                        child: Container(
                                            height: 24.0,
                                            padding: EdgeInsets.only(left: 10.w),
                                            child: Row(
                                                children: <Widget>[
                                                    Image.asset(
                                                        "images/iocn/dianzhan.png",
                                                        fit: BoxFit.cover,
                                                        width: 24.w,
                                                        height: 24.w,
                                                    ),
                                                    SizedBox(width: 4.w),
                                                    Text("100", style: TextStyle(fontSize: 14.sp))
                                                ]
                                            ),
                                        ),
                                    ),
                                    Expanded(
                                        flex: 3,
                                        child: SizedBox(
                                            height: 24.0,
                                            child: Row(
                                                children: <Widget>[
                                                    Image.asset(
                                                        "images/iocn/soucang.png",
                                                        fit: BoxFit.cover,
                                                        width: 24.w,
                                                        height: 24.w,
                                                    ),
                                                    SizedBox(width: 4.w),
                                                    Text("100", style: TextStyle(fontSize: 14.sp))
                                                ]
                                            ),
                                        ),
                                    ),
                                    Expanded(
                                        flex: 3,
                                        child: Container(
                                            height: 24.0,
                                            padding: EdgeInsets.only(right: 26.w),
                                            child: Row(
                                                children: <Widget>[
                                                    Image.asset(
                                                        "images/iocn/xinxi.png",
                                                        fit: BoxFit.cover,
                                                        width: 24.w,
                                                        height: 24.w,
                                                    ),
                                                    SizedBox(width: 4.w),
                                                    Text("100", style: TextStyle(fontSize: 14.sp))
                                                ]
                                            ),
                                        ),
                                    ),
                                ],
                            ),
                        )
                    ]
                )
            ));
        }
        return list;
    }

    @override
    Widget build(BuildContext context) {
        ScreenUtil.init(context, designSize: const Size(Global.windows_w, Global.windows_h), allowFontScaling: true);
        return ListView(
            shrinkWrap: true,
            scrollDirection : Axis.vertical,
            children: _getData(),
        );
    }
}
