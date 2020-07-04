import 'package:flutter/material.dart';
import 'package:flutter_components_demo/featureComps/NavigationDemo/Pages/PageThree.dart';

class NavigatorDemo extends StatefulWidget {
  @override
  _NavigatorDemoState createState() => _NavigatorDemoState();
}

class _NavigatorDemoState extends State<NavigatorDemo> {
  String msg = "jackhui";

  Future _navTopage3(BuildContext context) {
    Navigator.of(context).pushNamed('pagethree', arguments: "hello").then((res) {
      print("from last route: $res");
      return;
    });
  }

  Future _navTopage2(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PageTwo(), settings: RouteSettings(arguments: "hello jackhui")));
  }

  Future _navTopage4(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PageTwo()));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          RaisedButton(onPressed: () {
            _navTopage2(context);
          }),
          RaisedButton(onPressed: () {
            _navTopage3(context);
          }),
          RaisedButton(onPressed: () {
            _navTopage4(context);
          }),
        ],
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("${ModalRoute.of(context).settings.arguments}");
    return Scaffold(
      body: Container(
        child: Center(
          child: Icon(Icons.train, size: 128.0,)
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pop(context);
      }),
    );
  }
}