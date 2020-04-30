import 'package:flutter/material.dart';

class HeroDemo extends StatefulWidget {
  @override
  _HeroDemoState createState() => _HeroDemoState();
}

class _HeroDemoState extends State<HeroDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 2,
          ),
          children: List.generate(10, (int index) {
            if (index == 6) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return _HeroImageDemo();
                  }));
                },
                child: Hero(
                    tag: 'hero',
                    child: Image.asset(
                      'images/demo1.png',
                      fit: BoxFit.fill,
                    )),
              );
            }
            return Container(
              color: Colors.primaries[2],
            );
          })),
    );
  }
}

class _HeroImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
          tag: 'hero',
          child: Image.asset(
            'images/demo1.png',
            fit: BoxFit.fill,
          )),
    );
  }
}
