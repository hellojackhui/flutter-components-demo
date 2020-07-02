import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DatePickerDemo extends StatefulWidget {
  // 从外部传入默认的date
  final DateTime defaultDateTime;
  final String type;

  DatePickerDemo({
    Key key,
    this.defaultDateTime,
    this.type,
  }):super(key: key);

  @override
  _DatePickerDemo createState() => _DatePickerDemo();
}

class _DatePickerDemo extends State<DatePickerDemo> {
  DateTime _selectedDate;

  initState() {
    super.initState();
    _selectedDate = widget.defaultDateTime;
  }

  bool _checkPredicate(DateTime date) {
    return date.difference(DateTime.now()).inMilliseconds > 0;
  }

  void _showDatePicker(BuildContext context) async{
    var result = await showDatePicker(
      context: context, 
      initialDate: DateTime.now(), 
      firstDate: DateTime(2020), 
      lastDate: DateTime(2030)
    );
    print('$result');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return DayPicker(
    //   key: widget.key,
    //   selectedDate: _selectedDate,
    //   currentDate: widget.defaultDateTime,
    //   selectableDayPredicate: _checkPredicate,
    //   onChanged: (time) {
    //     setState(() {
    //       _selectedDate = time;
    //     });
    //   },
    //   firstDate: DateTime(2020, 5, 1),
    //   lastDate: DateTime(2020, 8, 31),
    //   displayedMonth: DateTime(2020),
    // );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            hoverColor: Theme.of(context).primaryColor,
            onPressed: () {
            _showDatePicker(context);
            }, 
            child: Text('showDatePicker', style: TextStyle(
              color: Colors.red
            ),)
          )
        ],
      ),
    );
  }
}