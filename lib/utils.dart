import 'package:flutter/material.dart';

Future navigatorRoute(BuildContext context, Widget widget) {
  return Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}