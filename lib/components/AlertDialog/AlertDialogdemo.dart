import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogDemo extends StatelessWidget {

  Future<void> _showAndroidDialog(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text('更新提示'),
          content: Text('是否需要更新?'),
          actions: <Widget>[
            FlatButton(onPressed: () {Navigator.of(context).pop('ok');}, child: Text('确定')),
            FlatButton(onPressed: () {Navigator.of(context).pop('cancel');}, child: Text('取消')),
          ],
        );
      }
    );
  }

  Future<void> _showIosDialog(BuildContext context) {
    return showCupertinoDialog(
      context: context, 
      builder: (context) {
      return CupertinoAlertDialog(
        title: Text('更新提示'),
        content: Text('是否需要更新?'),
        actions: <Widget>[
          FlatButton(onPressed: () {Navigator.of(context).pop('ok');}, child: Text('确定')),
          FlatButton(onPressed: () {Navigator.of(context).pop('cancel');}, child: Text('取消')),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(onPressed: () => _showAndroidDialog(context), child: Text('更新android按钮')),
            RaisedButton(onPressed: () => _showIosDialog(context), child: Text('更新ios按钮'))
          ],
        )
      )
    );
  }
}

