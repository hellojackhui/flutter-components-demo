import 'dart:convert';

import 'package:flutter_components_demo/utils/SharePreference.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:dio/dio.dart';


class StoreSystemDemo extends StatefulWidget {

  final String VERSION_URL = "https://me.yonyoucloud.com/log/app/release/versions";

  @override
  _StoreSystemDemoState createState() => _StoreSystemDemoState();
}

class _StoreSystemDemoState extends State<StoreSystemDemo> {
  Dio dio;
  VersionData data;
  String str = json.encode({
    "_id": "5effe779b7eeaf79695ba302",
    "result": true,
    "isLatest": true,
    "isforce": "Y",
    "versioncode": 40,
    "versionname": "",
    "message": "1.扫码开票支持开具ofd发票, 2.文件导入功能支持上传ofd格式发票, 3.票夹发票支持提交到票据中心, 4.修复已知问题，提升稳定性",
    "loadurl": "http://download.piaoeda.com/mobile/app/stable/piaoyouji-v2.4.6.apk"
    }
  );

  @override
  void initState() {
    dio = new Dio();
    data = VersionData(loadurl: 'jackhui');
    super.initState();
  }

  Future getVersionInfo() async {
    print('active');
    Future.delayed(Duration(milliseconds: 2000));
    data = VersionData.fromJson(json.decode(str));
    setState(() {});
  }

  Future setVersionsp(String key, String value) async {
    var res = await setSpString(key, value);
    print(res);
  }

  Future getVersionsp(String key) async {
    var res = await getSpString(key);
    print(res);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 300,
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Expanded(flex: 1, child: Center(child: FlatButton(onPressed: getVersionInfo, child: Text('获取信息'),))),
              Expanded(flex: 2, child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(flex: 1, child: FlatButton(onPressed: () {
                    setVersionsp('loadurl', data.loadurl);
                  }, child: Text('存储到sharepreference'))),
                  Expanded(flex: 1, child: FlatButton(onPressed: () {
                    getVersionsp('loadurl');
                  }, child: Text('获取sharepreference数据'))),
                ]
              )),
              // Expanded(flex: 2, child: null)
            ],)
          ),
          Container(
            child: Center(child: Text(data.loadurl, style: TextStyle(fontSize: 20.0))),
          )
        ], 
      )
    );
  }
}

class VersionData {
  String loadurl;
  bool result;
  bool isLatest;
  String isforce;
  int versioncode;
  String message;
  VersionData({this.loadurl, this.result, this.isLatest, this.isforce, this.message, this.versioncode});
  factory VersionData.fromJson(Map<String, dynamic> from) {
    return VersionData(loadurl: from['loadurl'], result: from['result'], isLatest: from['isLatest'], isforce: from['isforce'], versioncode: from['versioncode'], message: from['message']);
  }
  Map<String, dynamic> tojson() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['loadurl'] = this.loadurl;
    map['result'] = this.result;
    map['isLatest'] = this.isLatest;
    map['isforce'] = this.isforce;
    map['versioncode'] = this.versioncode;
    map['message'] = this.message;
    return map;
  }
}