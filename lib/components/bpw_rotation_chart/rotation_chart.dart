// ignore_for_file: camel_case_types, use_key_in_widget_constructors, non_constant_identifier_names, import_of_legacy_library_into_null_safe, unused_import, must_be_immutable

/*
 * @Name: 轮播图
 * @Author: bpwen.cn
 * @Date: 2022-01-11 17:44:07
 * @LastEditors: VSCode
 * @LastEditTime: 2022-01-24 16:33:14
 * @url:https://github.com/best-flutter/flutter_swiper/blob/master/README-ZH.md
 */
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import '/components/config.dart';


//轮播图
class Bpw_rotation_chart extends StatefulWidget {
    List data;
    
    Bpw_rotation_chart({
        Key? key,
        required this.data
    }) : super(key: key);
    @override
     _Bpw_rotation_chart createState() => _Bpw_rotation_chart();
}

class _Bpw_rotation_chart extends State<Bpw_rotation_chart> {

    //定义方法
    _launchURL(url) async {
        if (await canLaunch(url)) {
            await launch(url);
        } else {
            throw 'Could not launch $url';
        }
    }

    @override
     Widget build(BuildContext context) {
        return widget.data.isEmpty ? const Text("") : Swiper(
            itemBuilder: (BuildContext context, int index) {
                return InkWell(
                    onTap: (){
                        _launchURL(widget.data[index]["link"]);
                    },
                    child: Image.network(
                        widget.data[index]["imgUrl"],
                        fit: BoxFit.cover,
                    ),
                );
            },
            itemCount: widget.data.length,
            pagination: SwiperCustomPagination(
                builder: (BuildContext context, SwiperPluginConfig config) {
                    return Align(
                        alignment: Alignment.bottomCenter,
                        child: AlignText(
                            Index: config.activeIndex,
                            Length: widget.data.length
                            )
                    );
                }
            )
        );
    }
}

class AlignText extends StatefulWidget {
    final int Index;
    final int Length;

    const AlignText({
        Key? key,
        this.Index = 0,
        this.Length = 0
    }) : super(key: key);

    @override
    _AlignText createState() => _AlignText();
}

class _AlignText extends State<AlignText> {
    @override
    Widget build(BuildContext context) {
        ScreenUtil.init(context, designSize: const Size(Global.windows_w, Global.windows_h), allowFontScaling: true);

        List<Widget> _GetData(){
            List<Widget> list = [];
            for(var i=0; i<widget.Length; i++){
                var _sizedBox = Row(
                    children: <Widget>[
                        SizedBox(
                            width: 11.w,
                            height: 3.h,
                            child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: widget.Index != i ? const Color.fromRGBO(0, 0, 0, 0.4) : const Color.fromRGBO(255, 255, 255, 0.7),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(3)
                                    ),
                                ),
                            )
                        ),
                        const SizedBox(width: 5.0),
                    ]
                );
                list.add(_sizedBox);
            }
            return list;
        }

        return Container(
            height: 50.0,
            padding: const EdgeInsets.only(bottom: 25.0),
            alignment: Alignment.center,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _GetData(),
            ),
        );
    }
}