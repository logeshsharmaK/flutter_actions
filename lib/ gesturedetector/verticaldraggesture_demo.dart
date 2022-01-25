

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerticalDragGestureDemo extends StatefulWidget {
  @override
  _VerticalDragGestureDemoState createState() => _VerticalDragGestureDemoState();
}

class _VerticalDragGestureDemoState extends State<VerticalDragGestureDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Vertical Drag gesture '),
        ),
        body: Center(
          child: Container(
            child: GestureDetector(
              /*onVerticalDragStart: (DragStartDetails details){
                debugPrint("start");
                debugPrint('$details');
              },*/
             /* onVerticalDragUpdate: (DragUpdateDetails details){
                debugPrint("Update");
                debugPrint('$details');
              },*/
              /*onVerticalDragDown: (DragDownDetails details){
                debugPrint("Down");
                debugPrint('$details');
              },*/
              /*onVerticalDragEnd: (DragEndDetails details){
                debugPrint("End");
                debugPrint('$details');
              },*/
              onVerticalDragCancel: () {
                debugPrint("Cancel");
              },
              child: Icon(Icons.person ,size: 300,),
            ),
          ),
        ),
      ),
    );
  }
}
