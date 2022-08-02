// ignore_for_file: unnecessary_new, unnecessary_import, unused_import

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';

//简单粗暴方式处理校验证书方法
http.Client sslClient() {
    var ioClient = new HttpClient()
        ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
    http.Client _client = IOClient(ioClient);
    return _client;
}