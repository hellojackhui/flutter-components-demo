import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  List<Icon> icons = <Icon>[
    Icon(Icons.access_time),
    Icon(Icons.access_alarms),
    Icon(Icons.ac_unit),
    Icon(Icons.insert_chart),
    Icon(Icons.flag),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int i) {
                return ListTile(title: Text('$i'), leading: icons[i]);
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.separated(itemBuilder: (context, i) {
              return ListTile(title: Text('$i'), leading: icons[i]);
            }, separatorBuilder: (context, j) {
              return Divider(color: j % 2 == 0 ? Colors.red : Colors.blue,);
            }, itemCount: 5),
          ),
        ],
      )
    );
  }
}
