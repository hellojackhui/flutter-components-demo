import 'package:flutter/material.dart';

import 'package:flutter_components_demo/components/Components.dart';
import 'package:flutter_components_demo/featureComps/InheritComponentDemo.dart';
import 'package:flutter_components_demo/featureComps/NavigationDemo/NavigatorDemo.dart';

import 'featureComps/FeatureComps.dart';

class Indexpage extends StatefulWidget {
  @override
  _IndexpageState createState() => _IndexpageState();
}

class _IndexpageState extends State<Indexpage> with WidgetsBindingObserver {
  int _currentIndex = 0;
  
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('didChangeDependencies');
  }
  
  @override
  void didUpdateWidget(Indexpage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('deactivate');
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    print("$state");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
    
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
          PopupMenuButton(
            onSelected: (selected) {
              if (selected == '语文') {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('${selected}'),
                      content: Text('${selected}'),
                    );
                  }
                );
              }
            },
            itemBuilder: (context) {
              return <PopupMenuEntry<String>> [
                PopupMenuItem(
                  child: Text('语文'),
                  value: '语文',
                ),
                PopupMenuItem(
                  child: Text('数学'),
                  value: '数学',
                ),
                PopupMenuItem(
                  child: Text('英语'),
                  value: '英语',
                ),
              ];
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album),
              title: Text('11'),
              subtitle: Text("this is jackhui's project"),
            ),
            ListTile(
              leading: Icon(Icons.album),
              title: Text('12'),
              subtitle: Text("this is jackhui's project"),
            ),
            ListTile(
              leading: Icon(Icons.album),
              title: Text('13'),
              subtitle: Text("this is jackhui's project"),
            ),
          ], 
        )
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          ComponentsDemo(),
          NavigatorDemo(),
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
            icon: Icon(Icons.book),
            title: Text('复合组件')
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