import 'package:flutter/material.dart';


class SampleDemo extends StatefulWidget {
  var defaultTargetPlatform;
  SampleDemo({Key key, this.defaultTargetPlatform}): super(key: key);
  @override
  _SampleDemoState createState() => _SampleDemoState();
}

class _SampleDemoState extends State<SampleDemo> {
  @override
  Widget build(BuildContext context) {
    // ignore: unrelated_type_equality_checks
    if (widget.defaultTargetPlatform == TargetPlatform.android) {
      return AndroidView(viewType: 'sampleview');
    } else {
      return UiKitView(viewType: 'sampleview');
    }
  }
}