import 'package:flutter/material.dart';
import 'package:flutter_components_demo/featureComps/model.dart';

class DownloadListItem extends StatefulWidget {
  UpdateItemModel model;
  DownloadListItem({Key key, this.model}) : super(key: key);
  @override
  _DownloadListItemState createState() => _DownloadListItemState();
}

class _DownloadListItemState extends State<DownloadListItem> {
  Widget buildTopRow(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(widget.model.appIcon, width: 80, height: 80),
            )),
        Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.model.appName,
                  maxLines: 1,
                ),
                Text(
                  widget.model.appDate,
                  maxLines: 1,
                ),
              ],
            )),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: FlatButton(onPressed: () {}, child: Text('open')),
        )
      ],
    );
  }

  Widget buildBottomRow(BuildContext context) {
    return Padding(
        //Padding控件用来设置整体边距
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0), //左边距和右边距为15
        child: Column(
            //Column控件用来垂直摆放子Widget
            crossAxisAlignment: CrossAxisAlignment.start, //水平方向距左对齐
            children: <Widget>[
              Text(widget.model.appDescription), //更新文案
              Padding(
                  //Padding控件用来设置边距
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0), //上边距为10
                  child: Text(
                      "${widget.model.appVersion} • ${widget.model.appSize} MB"))
            ]));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[buildTopRow(context), buildBottomRow(context)],
    );
  }
}
