import 'package:flutter/material.dart';

class RichTextDemo extends StatefulWidget {
  @override
  _RichTextDemoState createState() => _RichTextDemoState();
}

class _RichTextDemoState extends State<RichTextDemo> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'jackhui no-1',
        style: DefaultTextStyle.of(context).style,
        children: [
          TextSpan(text: 'hello', style: TextStyle(color: Colors.primaries[1])),
          TextSpan(text: 'jack', style: TextStyle(color: Colors.primaries[2])),
          TextSpan(text: 'hui', style: TextStyle(color: Colors.primaries[3])),
        ] 
      )
    );
  }
}