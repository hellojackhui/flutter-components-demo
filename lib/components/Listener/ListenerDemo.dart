import 'package:flutter/material.dart';

class ListenerDemo extends StatefulWidget {
  @override
  _ListenerDemoState createState() => _ListenerDemoState();
}

class _ListenerDemoState extends State<ListenerDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(child: Listener(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red
            ),
            onPointerDown: (event) => print('onPointerDown'),
            onPointerMove: (event) => print('onPointerMove'),
            onPointerUp: (event) => print('onPointerUp'),
          ))
        ],
      ),
    );
  }
}