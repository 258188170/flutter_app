import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: new Text("tittle"),
      ),
      body: new ListView.builder(
        itemBuilder: (context, index) {
          return new DemoItem();
        },
        itemCount: 30,
      ),
    );
  }
}

class DemoItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Card(
        child: new FlatButton(
            onPressed: () {
              print("dian ji le");
            },
            child: new Padding(
              padding: new EdgeInsets.only(left: 0.0, top: 10.0, bottom: 10.0),
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Container(
                    child: new Text(
                      "这是描述",
                      style: new TextStyle(
                        fontSize: 14.0,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    margin: new EdgeInsets.only(top: 6.0, bottom: 2.0),
                    alignment: Alignment.topLeft,
                  ),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _getBottomItem(Icons.star, "1000"),
                      _getBottomItem(Icons.edit, "1000"),
                      _getBottomItem(Icons.print, "1000"),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}

_getBottomItem(IconData icon, String text) {
  return Expanded(
    flex: 1,
    child: Center(
      child: Row(
        //主轴居中,即横向居中
        mainAxisAlignment: MainAxisAlignment.center,
        //大小按最大充满
        mainAxisSize: MainAxisSize.max,
        //横向居中
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 16.0, color: Colors.grey),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          Text(
            text,
            style: new TextStyle(color: Colors.grey, fontSize: 14.0),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          )
        ],
      ),
    ),
  );
}
