import 'package:flutter/material.dart';


class AnimationDemo extends StatefulWidget {
  @override
  _AnimationDemoState createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  @override
  void initState() {
    // TODO: implement initState
    controller = AnimationController(vsync: this, duration: Duration(microseconds: 1000));
    CurvedAnimation curve = CurvedAnimation(parent: controller, curve: Curves.bounceInOut);
    animation = Tween(begin: 50.0, end: 200.0).animate(curve)..addListener(() {
      setState(() {});
    });
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          child: Image.asset("images/demo1.png", fit: BoxFit.cover,)
        )
      ),
    );
  }
}