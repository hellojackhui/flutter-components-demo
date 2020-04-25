import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProgressIndicatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          LinearProgressIndicator(),
          LinearProgressIndicator(
            value: 0.3,
            backgroundColor: Colors.lightBlue,
            valueColor: AlwaysStoppedAnimation<Color
            >(Colors.red),
          ),
          CircularProgressIndicator(),
          CircularProgressIndicator(
            value: 0.3,
            strokeWidth: 5.0,
            backgroundColor: Colors.lightBlue,
            valueColor: AlwaysStoppedAnimation(Colors.red)
          ),
          CupertinoActivityIndicator(),
          CupertinoActivityIndicator(
            animating: true,
            radius: 0.3,
          ),
          RefreshProgressIndicator(),
          RefreshProgressIndicator(strokeWidth: 2.0, valueColor: AlwaysStoppedAnimation<Color>(Colors.red),backgroundColor: Colors.greenAccent,)
        ],
      )
    );
  }
}