import 'package:flutter/material.dart';
import 'package:flutter_components_demo/featureComps/DownloadListItem.dart';
import 'package:flutter_components_demo/featureComps/model.dart';

class FeatureComps extends StatefulWidget {
  @override
  _FeatureCompsState createState() => _FeatureCompsState();
}

class _FeatureCompsState extends State<FeatureComps>
    with TickerProviderStateMixin {
  // TabController _controller;
  List<String> list = ["GoogleDownload"];
  UpdateItemModel model;

  @override
  void initState() {
    // TODO: implement initState
    // _controller = TabController(length: 1, vsync: this);
    super.initState();
    model = new UpdateItemModel(
      appDate: "2019年6月5日",
      appDescription: "thanks for using google maps!",
      appIcon: "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3402714187,552802066&fm=26&gp=0.jpg",
      appName: "jackhui",
      appSize: "12.0",
      appVersion: "1.2.4"
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: DownloadListItem(model: model,)
          )
        ],
      ),
    );
  }
}