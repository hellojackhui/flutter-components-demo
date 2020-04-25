import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool checked = true;
  void setchecked(val) {
    setState(() {
      checked = val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        // child: ListTile(
        //  leading: Checkbox(
        //    tristate: true,
        //    value: checked,
        //    activeColor: Colors.lightBlue,
        //    checkColor: Colors.red,
        //    autofocus: true,
        //    onChanged: (val) {
        //      setchecked(val);
        //    },
        //  ),
        //  title: Text('checkbox'),
        //  subtitle: Text('this is checkbox icon'),
        // )
        child: CheckboxListTile(
          value: checked,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (val) {
            setchecked(val);
          },
          secondary: Icon(Icons.accessibility),
          title: Text('jackhui'),
          subtitle: Text('this is checkbox icon'),
          selected: true,
        ),
      ),
    );
  }
}