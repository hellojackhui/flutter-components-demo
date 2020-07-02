import 'package:flutter/material.dart';

class SliverDemo extends StatefulWidget {
  @override
  _SliverDemoState createState() => _SliverDemoState();
}

class _SliverDemoState extends State<SliverDemo> {
  ScrollController controller;
  bool isToTop = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new ScrollController();
    controller.addListener(() {
      if (controller.offset > 1000) {
        setState(() {isToTop = true;});
      } else if(controller.offset < 300) {
        setState(() {isToTop = false;});
      }
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('CustomScrollView Demo'),//标题 
            floating: true,//设置悬浮样式 
            flexibleSpace: Image.network("http://pic.jj20.com/up/allimg/1113/0F220091915/200F2091915-1-1200.jpg",fit:BoxFit.cover),//设置悬浮头图背景 
            expandedHeight:220,//头图控件高度
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text('Item #$index')),
              childCount: 100
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: isToTop ? () {
          controller.animateTo(0, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
        } : null,
        child: Text("top"),
        ),
    );
  }
}