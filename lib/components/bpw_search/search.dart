// ignore_for_file: dead_code

/*
 * @Name: 搜索
 * @Author: bpwen.cn
 * @Date: 2022-01-11 17:35:44
 * @LastEditors: VSCode
 * @LastEditTime: 2022-01-18 16:46:51
 */
// ignore_for_file: camel_case_types, import_of_legacy_library_into_null_safe, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/components/config.dart';

//搜索
class Bpw_search extends StatefulWidget {
    final Color color;

    const Bpw_search({
        Key? key,
        this.color = Colors.transparent,
    }) : super(key: key);

    @override
    _Bpw_search createState() => _Bpw_search();
}

class _Bpw_search extends State<Bpw_search> {
    TextEditingController searchVlue = TextEditingController();
    @override
    Widget build(BuildContext context) {
        ScreenUtil.init(context, designSize: Size(Global.windows_w, Global.windows_h), allowFontScaling: true);
        return Container(
            //height: 35.0,
            decoration: BoxDecoration(
                color: widget.color,
                borderRadius: const BorderRadius.all(Radius.circular(150))
            ),
            child: Row(
                children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(left: 5.w, right: 5.w),
                        //child: const Icon(Icons.search, color: Colors.grey),
                        child: Image.asset(
                            "images/iocn/search.png",
                            width: 20.w,
                            height: 20.h,
                        ),
                    ),
                    Container(
                        //width: searchVlue.text != "" ? 160.w : 200.w,
                        width: searchVlue.text != "" ? 180.w : 200.w,
                        child: TextField(
                            controller: searchVlue,
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.only(top: 0.0, bottom: 10.0),
                                hintText: "搜索、社群、商品、商品",
                                border: InputBorder.none,
                            ),
                            onChanged: (value) {
                                setState(() {});
                            },
                        ),
                    ),
                    Container(
                        width: searchVlue.text != "" ? 40.w : 0.w,
                        alignment: Alignment.centerRight,
                        child:  AnimatedOpacity(
                            duration: const Duration(milliseconds: 300),
                            opacity: true ? 1.0 : 0.0,
                            child:  searchVlue.text == "" ? const Text("") :  IconButton(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                icon: const Icon(Icons.cancel, color: Colors.grey),
                                iconSize: 22.0,
                                onPressed: () {
                                    searchVlue.text = "";
                                    setState(() {});
                                }
                            )
                        ),
                    ),
                ]
            ),
        );
    }
}

