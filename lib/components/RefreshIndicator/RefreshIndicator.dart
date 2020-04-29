import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RefreshIndicatorDemo extends StatefulWidget {
  @override
  _RefreshIndicatorDemoState createState() => _RefreshIndicatorDemoState();
}

class _RefreshIndicatorDemoState extends State<RefreshIndicatorDemo> {
  var list = [1,2,4,3];
  @override
  Widget build(BuildContext context) {
    // return RefreshIndicator(
    //   displacement: 10,
    //   color: Colors.primaries[4],
    //   backgroundColor: Colors.primaries[6],
    //   onRefresh: () async {
    //     setState(() {
    //       list.add(list.length + 1);
    //     });
    //   },
    //   child: ListView.builder(
    //     scrollDirection: Axis.vertical,
    //     itemCount: list.length,
    //     itemExtent: 50,
    //     itemBuilder: (BuildContext context, int index) {
    //       return ListTile(
    //         title: Text('${list[index]}'),
    //       );
    //     },
    //   ),
    // );
    return CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverRefreshControl(
          onRefresh: () async {
            setState(() {
              list.add(list.length + 1);
            });
          },
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ListTile(
                title: Text('${list[index]}'),
              );
            },
            childCount: list.length
          ),
        ),
      ],
    );
  }
}