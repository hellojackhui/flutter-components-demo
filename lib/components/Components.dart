import 'package:flutter/material.dart';
import 'package:flutter_components_demo/components/AnimationDemo/AnimationDemo.dart';
import 'package:flutter_components_demo/components/AnimationSwicher/AnimationSwicher.dart';
import 'package:flutter_components_demo/components/AspectRatio/AspectRatio.dart';
import 'package:flutter_components_demo/components/Buttons/Buttons.dart';
import 'package:flutter_components_demo/components/Card/Card.dart';
import 'package:flutter_components_demo/components/Checkbox/Checkbox.dart';
import 'package:flutter_components_demo/components/Container/Container.dart';
import 'package:flutter_components_demo/components/CustomerPaint/CustomerPaintDemo.dart';
import 'package:flutter_components_demo/components/DataTable/DataTable.dart';
import 'package:flutter_components_demo/components/DatePickerDemo/DatePickerDemo.dart';
import 'package:flutter_components_demo/components/GridView/GridViewDemo.dart';
import 'package:flutter_components_demo/components/GuestDetector/GuestDetectorDemo.dart';
import 'package:flutter_components_demo/components/Hero/Hero.dart';
import 'package:flutter_components_demo/components/ListView/ListViewDemo.dart';
import 'package:flutter_components_demo/components/Listener/ListenerDemo.dart';
import 'package:flutter_components_demo/components/PageView/PageView2Demo.dart';
import 'package:flutter_components_demo/components/PageView/PageViewDemo.dart';
import 'package:flutter_components_demo/components/ProgressIndicator/ProgressIndicator.dart';
import 'package:flutter_components_demo/components/RefreshIndicator/RefreshIndicator.dart';
import 'package:flutter_components_demo/components/AboutDialog/AboutDialogDemo.dart';
import 'package:flutter_components_demo/components/AlertDialog/AlertDialogdemo.dart';
import 'package:flutter_components_demo/components/AnimateList/AnimateList.dart';
import 'package:flutter_components_demo/components/SimpleDiaLog/SimpleDialogDemo.dart';
import 'package:flutter_components_demo/components/Sliver/SliverDemo.dart';

class ComponentsDemo extends StatefulWidget {
  @override
  _ComponentsDemoState createState() => _ComponentsDemoState();
}

class _ComponentsDemoState extends State<ComponentsDemo> with TickerProviderStateMixin{
  TabController _controller;
  List<String> tabsList = [
    'AboutDialog',
    'AlertDialog',
    'AnimateList',
    'AnimationSwitcher',
    'AspectRatio',
    'Card',
    'CheckboxDemo',
    'ProgressIndicatorDemo',
    'ContainerDemo',
    'DataTableDemo',
    'ButtonsDemo',
    'GuestDetector',
    'GridView',
    'RefreshIndicatorDemo',
    'HeroDemo',
    'PageViewDemo',
    'PageView2Demo',
    'SimpleDialogDemo',
    'DatePickerDemo',
    'ListViewDemo',
    'SliverDemo',
    'ListenerDemo',
    'AnimationDemo',
    'CustomerPaintDemo',
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: tabsList.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBar(
            controller: _controller,
            tabs: 
              tabsList.map((f) {
                return Text(f, style: TextStyle(color: Colors.red[400]));
              }).toList(),
            isScrollable: true,
            labelPadding: EdgeInsets.all(15),
            unselectedLabelColor: Colors.red[100],
            labelColor: Colors.green,
            indicatorColor: Colors.green,
            labelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            flex: 1,
            child: TabBarView(
            controller: _controller,
            children: <Widget>[
              AboutDialogDemo(),
              AlertDialogDemo(),
              AnimateListDemo(),
              AnimationSwitcherDemo(),
              AspectRatioDemo(),
              CardDemo(),
              CheckboxDemo(),
              ProgressIndicatorDemo(),
              ContainerDemo(),
              DataTableDemo(),
              ButtonsDemo(),
              GuestDetectorDemo(),
              GridViewDemo(),
              RefreshIndicatorDemo(),
              HeroDemo(),
              PageViewDemo(),
              PageView2Demo(),
              SimpleDialogDemo(),
              DatePickerDemo(defaultDateTime: DateTime.now()),
              ListViewDemo(),
              SliverDemo(),
              ListenerDemo(),
              AnimationDemo(),
              CustomerPaintDemo(),
            ],
          ),)
        ]
      )
    );
  }
}