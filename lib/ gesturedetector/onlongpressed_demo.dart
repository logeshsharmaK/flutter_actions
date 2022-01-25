

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnLongPressedDemo extends StatefulWidget {
  @override
  _OnLongPressedDemoState createState() => _OnLongPressedDemoState();
}

class _OnLongPressedDemoState extends State<OnLongPressedDemo> {
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
                child: GestureDetector(
                  child: Text(' show snack bar'),
                  onLongPress : () {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text('hello snack appears'),
                    ));
                  },
                ),
              ),
            );
          })),
    );
  }
}
