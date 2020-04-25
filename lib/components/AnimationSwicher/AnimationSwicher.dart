import 'package:flutter/material.dart';

class AnimationSwitcherDemo extends StatefulWidget {
  @override
  _AnimationSwitcherDemoState createState() => _AnimationSwitcherDemoState();
}

class _AnimationSwitcherDemoState extends State<AnimationSwitcherDemo> {
  Widget _widget;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _widget = Container(
      key: ValueKey('1'),
      height: 200,
      width: 200,
      color: Colors.red,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('change'),
          onPressed: () {
            setState(() {
              _widget = Container(
                width: 300,
                height: 300,
                color: Colors.green
              );
            });
          },
        ),
        AnimatedSwitcher(
          duration: Duration(seconds: 2),
          child: _widget,
          switchInCurve: Curves.easeIn,
          transitionBuilder: (Widget child, Animation<double> value) {
            return ScaleTransition(
              scale: value,
              child: child,
            );
          },
        ),
      ],
    );
  }
}