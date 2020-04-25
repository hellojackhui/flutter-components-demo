import 'package:flutter/material.dart';
import 'package:flutter_components_demo/components/AboutDialog/AboutDialogDemo.dart';
import 'package:flutter_components_demo/components/AlertDialog/AlertDialogdemo.dart';
import 'package:flutter_components_demo/components/AnimateList/AnimateList.dart';
import 'components/AnimationSwicher/AnimationSwicher.dart';
import 'components/AspectRatio/AspectRatio.dart';
import 'components/Card/Card.dart';
import 'components/Checkbox/Checkbox.dart';
import 'components/Container/Container.dart';
import 'components/ProgressIndicator/ProgressIndicator.dart';

class Indexpage extends StatefulWidget {
  @override
  _IndexpageState createState() => _IndexpageState();
}

class _IndexpageState extends State<Indexpage> with TickerProviderStateMixin{
  int _currentIndex = 0;
  TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 9, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  void setIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("jackhui's flutter compnent demo"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
          IconButton(icon: Icon(Icons.access_time), onPressed: () {}),
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Text('AboutDialog', style: TextStyle(color: Colors.white)),
            Text('AlertDialog', style: TextStyle(color: Colors.white)),
            Text('AnimateList', style: TextStyle(color: Colors.white)),
            Text('AnimationSwitcher', style: TextStyle(color: Colors.white)),
            Text('AspectRatio', style: TextStyle(color: Colors.white)),
            Text('Card', style: TextStyle(color: Colors.white)),
            Text('CheckboxDemo', style: TextStyle(color: Colors.white)),
            Text('ProgressIndicatorDemo', style: TextStyle(color: Colors.white)),
            Text('ContainerDemo', style: TextStyle(color: Colors.white)),
          ],
          isScrollable: true,
          labelColor: Theme.of(context).primaryColor,
          labelPadding: EdgeInsets.all(15),
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        )
      ),
      drawer: Drawer(),
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          TabBarView(
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
           ],
          ),
          Container(
            child: Center(
             child: Icon(Icons.camera, size: 32.0,), 
            )
          ),
          Container(
            child: Center(
             child: Icon(Icons.group_work, size: 32.0,), 
            )
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) => setIndex(index),
        type: BottomNavigationBarType.fixed,
        // selectedItemColor: Theme.of(context).primaryColor,
        // unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('组件')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.toys),
            title: Text('页面')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.desktop_mac),
            title: Text('实战')
          ),
        ],
      ),
    );
  }
}