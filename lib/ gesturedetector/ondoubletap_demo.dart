

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnDoubleTapDemo extends StatefulWidget {
  @override
  _OnDoubleTapDemoState createState() => _OnDoubleTapDemoState();
}

class _OnDoubleTapDemoState extends State<OnDoubleTapDemo> {
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
                  onDoubleTap: () {
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

