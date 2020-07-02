import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";


class SimpleDialogDemo extends StatelessWidget {
  Future _showAlertDialog(context) {
    return showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text("提示"),
          children: <Widget>[
            Container(
              height: 80,
              alignment: Alignment.center,
              child: Align(
                alignment: Alignment.center,
                child: Text('jackhui')
              ),
            ),
            Divider(height: 20.0),
            FlatButton(
              child: Text("确定"),
              onPressed: () {
                Navigator.of(context).pop('cancel');
              },
            ),
            Divider(height: 1.0),
            FlatButton(
              child: Text("取消"),
              onPressed: () {
                Navigator.of(context).pop('ok');
              },
            ),
          ],
        );
      }
    );
  }
  Future _showCuptinoDialog(context) {
    return showCupertinoDialog(context: context, builder: (context) {
      return CupertinoAlertDialog(
        title: Text("name"),
        insetAnimationDuration: Duration(milliseconds: 2000),
        content: Align(alignment: Alignment.center, child: Text('cuptino'),),
        actions: <Widget>[
          FlatButton(onPressed: () => Navigator.of(context).pop('cancel'), child: Text('ok'),),
          FlatButton(onPressed: () => Navigator.of(context).pop('cancel'), child: Text('cancel'),)
        ],
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
        FlatButton(onPressed: () => _showCuptinoDialog(context), child: Text('cuptino按钮'))
      ]),
      floatingActionButton: FloatingActionButton(child: Text('切换'),onPressed: () => _showCuptinoDialog(context)),
    );
  }
}