import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnTapDemo extends StatefulWidget {
  @override
  _OnTapDemoState createState() => _OnTapDemoState();
}

class _OnTapDemoState extends State<OnTapDemo> {
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
                  onTap: () {
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
