import 'package:flutter/material.dart';

class GuestDetectorDemo extends StatefulWidget {
  @override
  _GuestDetectorDemoState createState() => _GuestDetectorDemoState();
}

class _GuestDetectorDemoState extends State<GuestDetectorDemo> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('onTap'),
      onTapDown: (TapDownDetails tapDownDetails) => print('onTapDown'),
      onTapUp: (TapUpDetails tapUpDetails) => print('onTapUp'),
      onTapCancel: () => print('onTapCancel'),
      onDoubleTap: () => print('onDoubleTap'),
      onLongPressStart: (v) => print('onLongPressStart'),
      onLongPressMoveUpdate: (v) => print('onLongPressMoveUpdate'),
      onLongPressUp: () => print('onLongPressUp'),
      onLongPressEnd: (v) => print('onLongPressEnd'),
      onLongPress: () => print('onLongPress'),
      onVerticalDragStart: (v) => print('onVerticalDragStart'),
      onVerticalDragDown: (v) => print('onVerticalDragDown'),
      onVerticalDragUpdate: (v) => print('onVerticalDragUpdate'),
      onVerticalDragCancel: () => print('onVerticalDragCancel'),
      onVerticalDragEnd: (v) => print('onVerticalDragEnd'),
      onScaleStart: (v) => print('onScaleStart'),
      onScaleUpdate: (ScaleUpdateDetails v) => print('onScaleUpdate'),
      onScaleEnd: (v) => print('onScaleEnd'),
      child: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue
        ),
      ),
    );
  }
}