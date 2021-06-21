import 'package:flutter/material.dart';

class TextDisplay extends StatelessWidget {
  final String currentText; 

  TextDisplay(this.currentText);

  @override
  Widget build(BuildContext context) {
    return Text(currentText, style: TextStyle(fontSize: 24),);
  }
}