// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/components/config.dart';

//热门社群
class PopularCommunity extends StatefulWidget {
    Map data;

    PopularCommunity({
        Key? key,
        required this.data
    }) : super(key: key);
    @override
    _PopularCommunity createState() => _PopularCommunity();
}

class _PopularCommunity extends State<PopularCommunity> {
    List<Widget> _getData(List dataItem){
        List<Widget> list = [];
        for(var i=0; i< dataItem.length; i++){
            list.add(Container(
                width: 155.w,
                margin: EdgeInsets.only(left: 15.w, top: 3.h, bottom: 8.h),
                padding: EdgeInsets.only(
                    left: 9.w,
                    top: 14.h,
                    right: 9.w
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border:Border.all(width: 1.0, color: const Color.fromRGBO(234, 234, 234, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(6.w)),
                    boxShadow: const [
                        BoxShadow(
                            color:Color.fromRGBO(0, 0, 0, 0.05),
                            offset: Offset(0.0, 2.0),
                            blurRadius: 5.0
                        )
                    ]
                ),
                child: Column(
                    children: <Widget>[
                        Row(
                            children: <Widget>[
                                Container(
                                    width: 118.w,
                                    height: 21.h,
                                    alignment: Alignment.centerLeft,
                                    child: Text(dataItem[i]["name"], overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 15.sp),)
                                ),
                                Container(
                                    width: 14.w,
                                    height: 21.h,
                                    alignment: Alignment.centerRight,
                                    child: Image.asset(
                                        "images/iocn/chevron_right.png",
                                        width: 14.w,
                                        height: 14.h,
                                    )
                                )
                            ]
                        ),
                        const SizedBox(height: 6.0),
                        Row(
                            children: <Widget>[
                                SizedBox(
                                    width: 86.w,
                                    height: 46.h,
                                    child: Column(
                                        children: <Widget>[
                                            Container(
                                                height: 23.h,
                                                alignment: Alignment.centerLeft,
                                                child: Text(bpw_int.count(dataItem[i]["worksNumber"], " 帖子"), overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12.sp)),
                                            ),
                                            Container(
                                                height: 23.h,
                                                alignment: Alignment.centerLeft,//""
                                                child: Text(bpw_int.count(dataItem[i]["subscribeNumber"], " 粉丝"), overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12.sp)),
                                            )
                                        ]
                                    )
                                ),
                                ClipOval(
                                    child: Image.network(
                                        dataItem[i]["headUrl"],
                                        fit: BoxFit.cover,
                                        width: 46.h,
                                        height: 46.h,
                                    ),
                                )
                            ]
                        ),
                    ],
                )
            ));
        }

        list.add(Container(
            width: 39.w,
            margin: EdgeInsets.only(left: 15.w, top: 3.h, right: 15.w, bottom: 8.h),
            decoration: BoxDecoration(
                color: Colors.white,
                border:Border.all(width: 1.0, color: const Color.fromRGBO(234, 234, 234, 1)),
                borderRadius: BorderRadius.all(Radius.circular(6.w)),
                boxShadow: const [
                    BoxShadow(
                        color:Color.fromRGBO(0, 0, 0, 0.05),
                        offset: Offset(0.0,2.0),
                        blurRadius: 5.0
                    )
                ]
            ),
            child:TextButton(
                child: Container(
                    padding: EdgeInsets.only(
                        left: 6.w
                    ),
                    child: Text("更多社群", style: TextStyle(fontSize: 12.sp, color: Colors.black))
                ),
                onPressed: () {
                    // ignore: avoid_print
                    print("点击了更多社群");
                },
            )
        ));

        return list;
    }

    @override
    Widget build(BuildContext context) {
        List records = widget.data["records"];
        ScreenUtil.init(context, designSize: const Size(Global.windows_w, Global.windows_h), allowFontScaling: true);
        return SizedBox(
            height: 110.h,
            child:ListView(
                shrinkWrap: true,
                scrollDirection : Axis.horizontal,
                children: _getData(records),
            )
        );
    }
}
