// ignore_for_file: unnecessary_brace_in_string_interps, camel_case_types, unused_import

import 'package:flutter/material.dart';

class bpw_int{
    //数字转单位
    static String count(String _count, String txt){
        var count = int.parse(_count);
        String _txet = "${count}${txt}";
        if(count > 999 && count < 10000){
            _txet = (count/1000).toStringAsFixed(2).toString()  + "千${txt}";
        }else if(count > 10000 && count < 10000000){
            _txet = (count/10000).toStringAsFixed(2).toString()  + "万${txt}";
        }else if(count > 10000000 && count < 100000000){
            _txet = (count/10000000).toStringAsFixed(2).toString()  + "千万${txt}";
        }else if(count > 100000000 && count < 100000000000){
            _txet = (count/100000000).toStringAsFixed(2).toString()  + "亿${txt}";
        }else if(count > 100000000000 && count < 1000000000000000){
            _txet = (count/100000000000).toStringAsFixed(2).toString()  + "千亿${txt}";
        }
        return  _txet;
    }
}