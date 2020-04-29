import 'package:flutter/material.dart';

class GridViewDemo extends StatefulWidget {
  @override
  _GridViewDemoState createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo> {
  // ScrollController _gridViewController;
  Widget _createGridViewItem(Color color){
    return Container(
      height: 80,
      color: color,
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _gridViewController = ScrollController()..addListener(() {
    //   print('${_gridViewController.position}');
    // });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      // child: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     mainAxisSpacing: 2,
      //     crossAxisSpacing: 2
      //   ),
      //   controller: _gridViewController,
      //   children: <Widget>[
      //     _createGridViewItem(Colors.primaries[0]),
      //     _createGridViewItem(Colors.primaries[1]),
      //     _createGridViewItem(Colors.primaries[2]),
      //     _createGridViewItem(Colors.primaries[3]),
      //     _createGridViewItem(Colors.primaries[4]),
      //     _createGridViewItem(Colors.primaries[5]),
      //     _createGridViewItem(Colors.primaries[6]),
      //     _createGridViewItem(Colors.primaries[7]),
      //   ],
      // ),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
        itemCount: 50, 
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 80,
            color: Colors.primaries[index % Colors.primaries.length],
          );
        }
      ),
    );
  }
}

