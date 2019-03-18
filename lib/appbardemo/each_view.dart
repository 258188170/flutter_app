import 'package:flutter/material.dart';

class EachView extends StatefulWidget {
  String _title;

  EachView(this._title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EachViewState();
  }
}

class EachViewState extends State<EachView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
    );
  }
}
