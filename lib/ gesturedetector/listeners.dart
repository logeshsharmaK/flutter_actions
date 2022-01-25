

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class ListenerDemo extends StatefulWidget {
  @override
  _ListenerDemoState createState() => _ListenerDemoState();
}

class _ListenerDemoState extends State<ListenerDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('On Tap Demo'),
            centerTitle: true,
          ),
          body: Builder(builder: (context) {
            return Container(
              child: Center(
                child: Listener(
                  child: Icon(Icons.person ,size: 300,),
                 onPointerDown: (PointerDownEvent event){
                    debugPrint('down');
                    debugPrint('$event');
                 },
                  onPointerMove: (PointerMoveEvent event){
                    debugPrint('Move');
                    debugPrint('$event');
                  },
                  onPointerUp: (PointerUpEvent event){
                    debugPrint('up');
                    debugPrint('$event');
                  },
                  onPointerSignal: (PointerSignalEvent event){
                    debugPrint('Signal');
                    debugPrint('$event');
                  },
                  onPointerCancel: (PointerCancelEvent event){
                    debugPrint('cancel');
                    debugPrint('$event');
                  },
                ),
              ),
            );
          })),
    );
  }
}
