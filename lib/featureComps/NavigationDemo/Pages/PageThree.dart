import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    print(ModalRoute.of(context).settings.arguments);
    return Scaffold(
      body: Container(
        child: Center(
          child: Icon(Icons.train, size: 128.0,)
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pop(context, "number");
      }),
    );
  }
}