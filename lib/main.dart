import 'package:flutter/material.dart';
import 'package:flutter_app/demo/home_state.dart';
import 'package:flutter_app/demo/demo_page.dart';
import 'package:flutter_app/frosted_glass_style_demo/frosted_glass_demo.dart';
import 'package:flutter_app/warp_demo/Warp_Demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: WarpDemo());
  }
}
