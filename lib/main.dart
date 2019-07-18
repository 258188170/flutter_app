import 'package:flutter/material.dart';
import 'package:flutter_app/pull_on_loading/pull_on_loading.dart';
//import 'package:flutter_app/pull_on_loading/gridview_demo.dart';
import 'package:flutter_app/splash_screen_demo/splash_screen.dart';

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
//        home: WarpDemo());
//        home: ChipDemo());
        //          home: ReorderableListViewDemo());
//      home: FilterChipDemo(),
//      home: ChoiceChipDemo(),
//      home: InputChipDemo(),
        home: MyHomePage()); //闪屏界面

    ;
  }
}
