import 'package:flutter/material.dart';
import 'package:flutter_components_demo/utils/CountModal.dart';
import 'package:provider/provider.dart';

class ProviderDemo extends StatefulWidget {
  @override
  _ProviderDemoState createState() => _ProviderDemoState();
}

class _ProviderDemoState extends State<ProviderDemo> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: CountModal(),
      child: FirstDemo()
    );
  }
}



//第一个页面，负责读数据
class FirstDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //取出资源
    final _counter = Provider.of<CountModal>(context);
    return Scaffold(
      //展示资源中的数据
      body: Text('Counter: ${_counter.count}'),
      //跳转到SecondPage
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage()))
      ));
  }
}


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //使用Consumer来封装counter的读取
      body: Consumer<CountModal>(
        //builder函数可以直接获取到counter参数
        builder: (context, CountModal counter, _) => Text('Value: ${counter.count}')),
      //使用Consumer来封装increment的读取 
      floatingActionButton: Consumer<CountModal>(
        //builder函数可以直接获取到increment参数
        builder: (context, CountModal counter, child) => FloatingActionButton(
          onPressed: counter.increment,
          child: child,
        ),
        child: TestIcon(),
      ),
    );
  }
}


//用于打印build方法执行情况的自定义控件
class TestIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("TestIcon build");
    return Icon(Icons.add);//返回Icon实例
  }
}