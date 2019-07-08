import 'package:flutter/material.dart';

class SliverScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SliverScreenState();
  }
}

class _SliverScreenState extends State<SliverScreen> {
  ScrollController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new ScrollController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        controller: _controller,
        slivers: <Widget>[
          _buildSliverAppBar(),
          _buildSliverToBoxAdapter(),
          _buildSliverGrid(context),
          _buildSliverFixedExtentList(context),
          _buildSliverFillViewport(),
        ],
      ),
    );
  }

  Widget _buildSliverGrid(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200.0,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 4.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.teal[100 * (index % 10)],
            child: Text('sliver grid item $index'),
          );
        },
        childCount: 10,
      ),
    );
  }

  Widget _buildSliverToBoxAdapter() {
    return SliverToBoxAdapter(
      child: Container(
        height: 100.0,
        color: Colors.pinkAccent.withOpacity(0.8),
        child: Center(
          child: Text(
            'sliverToBoxAdapter',
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          ),
        ),
      ),
    );
  }

  Widget _buildSliverAppBar() {
    return SliverAppBar(
      backgroundColor: Colors.white.withOpacity(0.5),
      expandedHeight: 200.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        title: Text('sliver demo'),
        background: Image.network(
          "https://www.snapphotography.co.nz/wp-content/uploads/New-Zealand-Landscape-Photography-prints-12.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildSliverFixedExtentList(BuildContext context) {
    return SliverFixedExtentList(
      itemExtent: 50.0,
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          alignment: Alignment.center,
          color: Colors.lightBlue[100 * (index % 10)],
          child: Text('Sliver Fixed Extent List Item $index'),
        );
      }, childCount: 10),
    );
  }

  Widget _buildSliverFillViewport() {
    return SliverFillViewport(
      delegate: SliverChildListDelegate([
        Container(
          height: 100.0,
          color: Colors.pinkAccent.withOpacity(0.8),
          child: Center(
              child: Text(
            'SliverFillViewport',
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          )),
        ),
      ]),
      viewportFraction: 1.0,
    );
  }
}
