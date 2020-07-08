import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


class NetworkDemo extends StatefulWidget {
  @override
  _NetworkDemoState createState() => _NetworkDemoState();
}

class _NetworkDemoState extends State<NetworkDemo> {
  String str = '';
  Future<void> requestHttpClient() async{
    //创建网络调用示例，设置通用请求行为(超时时间)
    var httpclient = HttpClient();
    httpclient.idleTimeout = Duration(seconds: 3);
    var url = Uri.parse("https://flutter.dev");
    var request = await httpclient.getUrl(url);
    request.headers.add("user-agent", "Custom-UA");

    var response = await request.close();
    if (response.statusCode == HttpStatus.ok) { 
      String res = await response.transform(utf8.decoder).join();
      setState(() {
        str = res;
      });
    } else { print('Error: \nHttp status ${response.statusCode}'); }
  }

  Future<void> requestDio() async {
    Dio dio = new Dio();
    var response = await dio.get("https://flutter.dev", options: Options(headers: {"user-agent" : "Custom-UA"}));
    if(response.statusCode == HttpStatus.ok) 
    { 
      print(response.data.toString()); 
    } else { 
      print("Error: ${response.statusCode}"); 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(onPressed: requestHttpClient, child: Text('httpclient'),),
          RaisedButton(onPressed: requestDio, child: Text('http'),),
          Expanded(
            flex: 1,
            child: Text(str)
          )
        ],
      )
    );
  }
}