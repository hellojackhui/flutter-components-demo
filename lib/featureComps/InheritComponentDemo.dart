import 'dart:async';

import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';

EventBus bus = new EventBus();

class MessageCenter {
  final String msg;
  const MessageCenter({this.msg});
}

class EventBusDemo extends StatefulWidget {
  @override
  _EventBusDemoState createState() => _EventBusDemoState();
}

class _EventBusDemoState extends State<EventBusDemo> {
  String getmsg = "jackhui";
  StreamSubscription subscription;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    subscription = bus.on<MessageCenter>().listen((msgcenter) => {
      setState(() {
        getmsg += msgcenter.msg;
      })
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(getmsg, style: TextStyle(color: Colors.red),),
          RaisedButton(onPressed: () {
            bus.fire(MessageCenter(msg: "jasad"));
          })
        ],
      )
    );
  }
}