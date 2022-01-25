

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/*assets:
- images/a_dot_ham.jpg*/

class HorizontalDragGestureDemo extends StatefulWidget {
  @override
  _HorizontalDragGestureDemoState createState() => _HorizontalDragGestureDemoState();
}

class _HorizontalDragGestureDemoState extends State<HorizontalDragGestureDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Horizontal drag gesture'),
        ),
        body: Center(
          child: Container(
            child: Center(
              child: GestureDetector(

               /* onHorizontalDragStart: (DragStartDetails details){
                  debugPrint('Start');
                  debugPrint("$details");
                },
                onHorizontalDragUpdate: (DragUpdateDetails details){
                  debugPrint('update');
                  debugPrint("$details");
                },*/
                onHorizontalDragCancel: () => debugPrint('drag cancel'),
              /*  onHorizontalDragDown: (DragDownDetails details){
                  debugPrint('Down');
                  debugPrint("$details");
                },*/
                child: Icon(Icons.person , size: 300,),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
