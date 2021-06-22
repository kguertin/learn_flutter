import 'package:flutter/material.dart';

import 'textDisplay.dart';
import 'textControl.dart';

void main() => runApp(DemoApp());

class DemoApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DemoAppState();
  }
}

class _DemoAppState extends State<DemoApp> {
  final _textData = ["First Option", "Second Option", "Third Option"];
  var _textIndex = 0;

  void _changeText() {
    setState(() {
      
    if(_textIndex >= 2 ){
      _textIndex = 0;
    } else {
      _textIndex += 1; 
    }
    });
  }


@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
    appBar: AppBar(
      title: Text("Demo Flutter App"),
      ),
    body: Center(
      child: Column(
        children: <Widget>[
          TextDisplay(_textData[_textIndex]), 
          TextControl(_changeText)]
        ),
      ),
    ),
  );
}
}