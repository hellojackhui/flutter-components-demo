import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueAccent,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
       mainAxisSize: MainAxisSize.min,
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         ListTile(
           leading: Icon(Icons.album),
           title: Text('jackhui'),
           subtitle: Text("this is jackhui's project"),
         ),
         ButtonBar(
           children: <Widget>[
             FlatButton(
               onPressed: () {}, 
               child: const Text('取消')
             ),
             FlatButton(
               onPressed: () {}, 
               child: const Text('确定')
             )
           ],
         ),
       ], 
      )
    );
  }
}