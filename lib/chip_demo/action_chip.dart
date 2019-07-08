/**
 * action chip 主要是在chip的基础上提供了一个onPress方法
 * 能够触发一些动作
 */

import 'package:flutter/material.dart';

class ActionChipDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ActionChipDemoState();
  }
}

class _ActionChipDemoState extends State<ActionChipDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('action chip demo'),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Center(
            child: ActionChip(
              label: Text('ACTION CHIP'),
              onPressed: () {
                setState(() {
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('on TAP')));
                });
              },
            ),
          );
        },
      ),
    );
  }
}
