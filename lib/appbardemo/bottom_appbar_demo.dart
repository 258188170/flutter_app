import 'package:flutter/material.dart';
import 'each_view.dart';

class BottomAppbarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomAppbarDemoState();
  }
}

class BottomAppbarDemoState extends State<BottomAppbarDemo> {
  List<Widget> _eachView;
  int _index = 0;

  @override
  void initState() {
    _eachView = List();
    _eachView..add(EachView('1'))..add(EachView('2'))..add(EachView('3'))..add(EachView('4'));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _eachView[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return EachView('New Page');
          }));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.near_me),
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
              color: Colors.white,
            ),
            IconButton(
                icon: Icon(Icons.edit_location),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    _index = 1;
                  });
                }),
            IconButton(
                icon: Icon(Icons.update),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    _index = 2;
                  });
                }),
            IconButton(
                icon: Icon(Icons.title),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    _index = 3;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
