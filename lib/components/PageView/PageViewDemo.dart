import 'package:flutter/material.dart';


class PageViewDemo extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  List<Widget> _list = [Page1(), Page2(), Page3()];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PageView.builder(
          itemCount: 10000,
          onPageChanged: (int index) {
            setState(() {
              currentindex = index % _list.length;
            });
          },
          itemBuilder: (context, index) {
            return Container(
              color: Colors.primaries[index % _list.length],
              alignment: Alignment.center,
              child: Text(
                'page${index % _list.length}',
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            );
          },
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_list.length, (int index) {
                return Container(
                  width: 10,
                  height: 10,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: index == currentindex ? Colors.lightBlue : Colors.white,
                    shape: BoxShape.circle,
                  ),
                );
              }).toList(),
            )
          ),
        )
      ],
      
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.primaries[0],
      child: Center(
        child: Text('Page1', style: TextStyle(fontSize: 20)),
      )
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.primaries[1],
      child: Center(
        child: Text('Page2', style: TextStyle(fontSize: 20)),
      )
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.primaries[2],
      child: Center(
        child: Text('Page3', style: TextStyle(fontSize: 20)),
      )
    );
  }
}