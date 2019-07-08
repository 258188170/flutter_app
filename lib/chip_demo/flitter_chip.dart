import 'package:flutter/material.dart';

class FilterChipDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FilterChipDemoState();
  }
}

class _FilterChipDemoState extends State<FilterChipDemo> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('filter chip demo'),
      ),
      body: Center(
        child: FilterChip(
          label: Text('FILTER CHIP'),
          selected: _isSelected,
          onSelected: (isSelected) {
            setState(
              () {
                _isSelected = isSelected;
              },
            );
          },
          selectedColor: Colors.blue.shade400,
        ),
      ),
    );
  }
}
