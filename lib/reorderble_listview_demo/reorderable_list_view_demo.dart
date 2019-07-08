import 'package:flutter/material.dart';
class ReorderableListViewDemo extends StatefulWidget {
  @override
  _ReorderableListViewDemoState createState() => _ReorderableListViewDemoState();
}

class _ReorderableListViewDemoState extends State<ReorderableListViewDemo> {
  List<String> names = [
    "LeBron James",
    "Kevin Durant",
    "Anthony Davis",
    "James Harden",
    "Stephen Curry",
    "Giannis Antetokounmopo",
    "Joel Embiid",
    "Russell Westbrook",
    "Paul George",
    "Kawhi Leonard",
    "Jeremy Shuhow Lin"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReorderableListView(
        header: AppBar(title: Text('ReorderableListViewDemo')),
        children: names.map(_buildCard).toList(),
        onReorder: _onReorder,
      ),
    );
  }

  Widget _buildCard(String name) {
    return SizedBox(
      key: ObjectKey(name),
      height: 200,
      child: Card(
        color: Colors.lightBlueAccent.withOpacity(0.4),
        child: Center(
          child: Text(
            '$name',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  _onReorder(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) newIndex = newIndex - 1;
    var name = names.removeAt(oldIndex);
    names.insert(newIndex, name);
    setState(() {});
  }
}
