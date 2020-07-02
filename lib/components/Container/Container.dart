import 'package:flutter/material.dart';


class ContainerDemo extends StatelessWidget {

  Widget _createItem({Color color, Widget node, Decoration decoration}) {
    return Container(
      height: 80.0,
      child: node,
      decoration: decoration,
      alignment: Alignment.center,
      padding: EdgeInsets.all(5.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: <Widget>[
          _createItem(color: Colors.white, node: Center(child: Text('jackhui')), decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle
          )),
          _createItem(color: Colors.white, node: Center(child: Text('jackhui')), decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Theme.of(context).primaryColor, 
          )),
          _createItem(color: Colors.white, node: Center(child: Text('jackhui')), decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            border: Border.all(color: Colors.red, width: 2.0),
          )),
          _createItem(color: null, node: null, decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            border: Border.all(color: Colors.red, width: 2.0),
            image: DecorationImage(image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),fit: BoxFit.fill),
          )),
          Container(
            child: Center(
              child: Text('jackhui', style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w700))
            ),
            padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(2.0)),
            )
          ),
        ],
      )
    );
  }
}


