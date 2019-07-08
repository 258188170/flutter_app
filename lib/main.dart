import 'package:flutter/material.dart';
import 'package:flutter_app/chip_demo/action_chip.dart';
import 'package:flutter_app/chip_demo/chip.dart';
import 'package:flutter_app/chip_demo/choice_chip.dart';
import 'package:flutter_app/chip_demo/flitter_chip.dart';
import 'package:flutter_app/chip_demo/input_chip.dart';
import 'package:flutter_app/clipper_demo/custom_clipper.dart';
import 'package:flutter_app/demo/home_state.dart';
import 'package:flutter_app/demo/demo_page.dart';
import 'package:flutter_app/expansion_tile_demo/expansion_tile.dart';
import 'package:flutter_app/frosted_glass_style_demo/frosted_glass_demo.dart';
import 'package:flutter_app/reorderble_listview_demo/reorderable_list_view_demo.dart';
import 'package:flutter_app/sliver_demo/sliver_demo.dart';
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
//        home: WarpDemo());
//        home: ChipDemo());
          home: ReorderableListViewDemo());
//      home: FilterChipDemo(),
//      home: ChoiceChipDemo(),
//      home: InputChipDemo(),
  }
}
