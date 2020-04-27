import 'package:flutter/material.dart';

class DividerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        child: Divider(
          height: 2.0,
          thickness: 1.0, 
          indent: 10,
          endIndent: 10,
        )
      )
    );
  }
}