// ignore_for_file: dead_code, use_key_in_widget_constructors

/*
 * @Name: 搜索
 * @Author: bpwen.cn
 * @Date: 2022-01-11 17:35:44
 * @LastEditors: VSCode
 * @LastEditTime: 2022-01-19 16:25:38
 */
// ignore_for_file: camel_case_types, import_of_legacy_library_into_null_safe, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/components/config.dart';

//搜索
class Bpw_searchA extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Container(
            height: 46.h,
            margin: EdgeInsets.only(left: 20.w, right: 20.w),
            padding: EdgeInsets.only(left: 20.0),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(150)),
                boxShadow: [
                    BoxShadow(
                        color:Color.fromRGBO(0, 0, 0, 0.03),
                        offset: Offset(0.0,2.0),
                        blurRadius: 5.0
                    )
                ]
            ),
            child:Row(
                children: <Widget>[
                    Text("深圳", style: TextStyle(fontSize: 15.sp)),
                    SizedBox(width: 2.w),
                    Image.asset(
                        "images/iocn/expand_more.png",
                        width: 19.w,
                        height: 19.h,
                    ),
                    Container(
                        width: 2.w,
                        height: 30.h,
                        margin: EdgeInsets.only(left: 10.w),
                        child: DecoratedBox(
                            decoration: BoxDecoration(color: Color.fromRGBO(241, 241, 241, 1))
                        )
                    ),
                    Container(
                        //width: 235.w,
                        width: 250.w,
                        height: 40.h,
                        alignment: Alignment.centerLeft,
                        //color: Colors.white,
                        child: Bpw_search(),
                    )
                    //Bpw_search()
                ]
            ),
        );
    }
}