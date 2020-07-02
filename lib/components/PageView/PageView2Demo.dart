import 'package:flutter/material.dart';

class PageView2Demo extends StatefulWidget {
  @override
  _PageView2DemoState createState() => _PageView2DemoState();
}

class _PageView2DemoState extends State<PageView2Demo> {
  PageController _controller;
  var imgList = [
    'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2877516247,37083492&fm=26&gp=0.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1582796218195&di=04ce93c4ac826e19067e71f916cec5d8&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F344fda8b47808261c946c81645bff489c008326f15140-koiNr3_fw658'
  ];
  var _currentPageValue = 0.0;
  //缩放系数
  double _scaleFactor = .8;
  double _height = 230.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(
      viewportFraction: 0.9
    );
    _controller.addListener(() {
      setState() {
        _currentPageValue = _controller.page;
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix4 = Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      //当前的item
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;

      matrix4 = Matrix4.diagonal3Values(1.0, currScale, 1.0)
        ..setTranslationRaw(0.0, currTrans, 0.0);
    } else if (index == _currentPageValue.floor() + 1) {
      //右边的item
      var currScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;

      matrix4 = Matrix4.diagonal3Values(1.0, currScale, 1.0)
        ..setTranslationRaw(0.0, currTrans, 0.0);
    } else if (index == _currentPageValue.floor() - 1) {
      //左边
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;

      matrix4 = Matrix4.diagonal3Values(1.0, currScale, 1.0)
        ..setTranslationRaw(0.0, currTrans, 0.0);
    } else {
      //其他，不在屏幕显示的item
      matrix4 = Matrix4.diagonal3Values(1.0, _scaleFactor, 1.0)
        ..setTranslationRaw(0.0, _height * (1 - _scaleFactor) / 2, 0.0);
    }

    return Transform(
      transform: matrix4,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: NetworkImage(imgList[index % 2]), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      child: PageView.builder(
       controller: _controller,
       itemBuilder: (context, index) {
         _buildPageItem(index);
       }, 
       itemCount: 10,
      )
    );
  }
}