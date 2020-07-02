import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

// class ImageDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GridView(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 2),
//       children: <Widget>[
//         Container(
//           child: Image.network(
//             'http://pic1.win4000.com/pic/c/cf/cdc983699c.jpg',
//             width: 200,
//             height: 200,
//           )
//         ),
//         Container(
//           color: Colors.primaries[1],
//         ),
//         Container(
//           color: Colors.primaries[3],
//         ),
//         Container(
//           color: Colors.primaries[5],
//         ),
//       ], 
//     );
//   }
// }

class ImageDemo extends StatefulWidget {
  @override
  _ImageDemoState createState() => _ImageDemoState();
}

class _ImageDemoState extends State<ImageDemo> {
  String _storageDir = '';
  _getLocalFile() async {
    String appDir = (await getApplicationDocumentsDirectory()).path;
    String tempDir = (await getTemporaryDirectory()).path;
    String storageDir = (await getExternalStorageDirectory()).path;
    setState(() {
      _storageDir = storageDir;
    });
    return storageDir;
  }
  @override
  Widget build(BuildContext context) {
    _getLocalFile();
    return Column(
      children: <Widget>[
        Image.network(
          'http://pic1.win4000.com/pic/c/cf/cdc983699c.jpg',
          width: 200,
          height: 200,
        ),
        Image.asset(
          'images/demo1.png',
          width: 200,
          height: 200,
        ),
        Image.asset(
          'images/demo2.png',
          width: 300,
          height: 160,
        ),
        Image.file(
          File('$_storageDir/1.png'),
          width: 300,
          height: 160,
        ),
        FadeInImage.assetNetwork(
          placeholder: "images/demo1.png", 
          image: "https://static001.geekbang.org/resource/image/7d/eb/7d5a36a8727ed68f241719b7768262eb.jpg",
          fit: BoxFit.fill,
          width: 200,
          height: 200,
        ),
        
      ],
    );
  }
}