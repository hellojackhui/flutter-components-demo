import 'package:flutter/material.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  List<User> _list = [
    User(age: '18', name: 'jackhui', selected: false, sex: '男', year: '1999', month: '10'),
    User(age: '19', name: 'jackhui1', selected: false, sex: '女', year: '1989', month: '10'),
    User(age: '20', name: 'jackhui2', selected: true, sex: '男', year: '1969', month: '10')
  ];
  bool _sortAccenting = true;
  List<DataRow> _listRow() {
    List<DataRow> _row = [];
    for (int i = 0; i < _list.length; i++) {
      _row.add(DataRow(
        selected: _list[i].selected,
        onSelectChanged: (selected) {
          setState(() {
            _list[i].selected = selected;
          });
        },
        cells: [
          DataCell(Text('${_list[i].name}')),
          DataCell(Text('${_list[i].age}')),
          DataCell(Text('${_list[i].sex}')),
          DataCell(Text('${_list[i].year}')),
          DataCell(Text('${_list[i].month}')),
        ]
      ));
    }
    return _row;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
        sortColumnIndex: 1,
        sortAscending: _sortAccenting,
        columns: [
          DataColumn(
            label: Text('name'),
            tooltip: '提示'
          ),
          DataColumn(
            label: Text('age'),
            numeric: true,
            onSort: (int index, bool ascending) {
              setState(() {
                _sortAccenting = ascending;
                if (ascending) {
                  _list.sort((a, b) => a.age.compareTo(b.age));
                } else {
                  _list.sort((a, b) => b.age.compareTo(a.age));
                }
              });
            }
          ),
          DataColumn(
            label: Text('性别'),
          ),
          DataColumn(
            label: Text('出生年份'),
          ),
          DataColumn(
            label: Text('出生月份'),
          ),
        ],
        rows: _listRow(),
      ),
      ),
    );
  }
}

class User {
  String name;
  String age;
  String sex;
  String year;
  String month;
  bool selected;

  User({this.name, this.age, this.selected, this.sex, this.year, this.month});
}

