import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function handleChange;

  TextControl(this.handleChange);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () => handleChange(), child: Text("Change"));
  }
}