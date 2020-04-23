import 'package:flutter/material.dart';


class AboutDialogDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: AboutDialog(
        applicationIcon: Image.asset(
          'images/demo1.png',
          height: 100.0,
          width: 100.0,
        ), 
        applicationName: '应用程序',
        applicationVersion: '1.0.0',
        applicationLegalese: 'copyright jackhui',
        children: <Widget>[
          Center(child: Text('是否需要更新?', style: TextStyle(fontSize: 15.0)))
        ],
      )
    );
  }
}