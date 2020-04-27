import 'package:flutter/material.dart';

class ButtonsDemo extends StatefulWidget {
  @override
  _ButtonsDemoState createState() => _ButtonsDemoState();
}

class _ButtonsDemoState extends State<ButtonsDemo> {
  String _currentValue = "语文";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FlatButton(
          onPressed: () {}, 
          clipBehavior: Clip.antiAlias,
          color: Colors.blue,
          child: Text('flatbutton', style: TextStyle(color: Colors.white),)
        ),
        DropdownButton(
          value: _currentValue,
          items: [
            DropdownMenuItem(
              value: '语文',
              child: Text('语文'),
            ),
            DropdownMenuItem(
              value: '数学',
              child: Text('数学'),
            ),
            DropdownMenuItem(
              value: '英语',
              child: Text('英语'),
            ),
          ],
          onChanged: (String selected) {
            setState(() {
              _currentValue = selected;
            });
          },
        )
      ],
    );
  }
}