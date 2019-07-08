import 'package:flutter/material.dart';
import 'textfields_focus_demo.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'flutter demo',
      theme: new ThemeData.light(),
      home: EditFieldFocusDemo(),
    );
  }
}
