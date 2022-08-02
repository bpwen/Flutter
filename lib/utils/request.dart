// ignore_for_file: unused_import, non_constant_identifier_names, unnecessary_null_comparison, unnecessary_new
import 'dart:io';
import 'package:http/io_client.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String ApiUrl = "https://192.168.1.182/api/";
//String ApiUrl = "https://jd.itying.com/api/";

class Ajax{
    static void get(String url, Function callback, {Map ? params, Function ? error}) async{
        if (params != null && params.isNotEmpty) {
            StringBuffer sb = StringBuffer("?");
            params.forEach((key, value) {
                sb.write("$key" + "=" + "$value" + "&");
            });
            String paramStr = sb.toString();
            paramStr = paramStr.substring(0, paramStr.length - 1);
            url += paramStr;
        }

        try {
            http.Response res = http.get(Uri.parse(ApiUrl + url));
            if (callback != null) {
                if(res.statusCode == 200) {
                    callback(res.bodyBytes);
                }else{
                    if (error != null) {
                        error(res.statusCode);
                    }
                }
            }
        } catch (exception) {
            if (error != null) {
                error(exception);
            }
        }
    }

    static void post(String url, Function callback, {Map ? params, Function ? error}) async {
        try {
            http.Response res =  await http.post(Uri.parse(ApiUrl + url), body: params);
            if (callback != null) {
                if(res.statusCode == 200) {
                    callback(res.bodyBytes);
                }else{
                    if (error != null) {
                        error(res.statusCode);
                    }
                }
            }
        } catch (e) {
            if (error != null) {
                error(e);
            }
        }
    }
}

http.Client sslClient() {
    var ioClient = new HttpClient()
        ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
    http.Client _client = IOClient(ioClient);
    return _client;
}