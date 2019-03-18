import 'package:flutter/material.dart';
import 'keep_alive_demo.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'flutter demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KeepAliveDemo(),
    );
  }
}

class KeepAliveDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _KeepAliveDemoState();
  }
}

class _KeepAliveDemoState extends State<KeepAliveDemo>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('keep alive demo'),
        bottom: TabBar(controller: _tabController, tabs: [
          new Tab(
            icon: new Icon(Icons.directions_car),
          ),
          new Tab(
            icon: new Icon(Icons.directions_transit),
          ),
          new Tab(
            icon: new Icon(Icons.directions_bike),
          ),
        ]),
      ),
      body: TabBarView(children: [
        MyHomePage(
          title: 'keep alive1 demo',
        ),
        MyHomePage(
          title: 'keep alive2 demo',
        ),
        MyHomePage(
          title: 'keep alive3 demo',
        ),

      ],controller: _tabController,),
    );
  }
}
