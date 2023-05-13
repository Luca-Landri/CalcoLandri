import 'package:flutter/material.dart';

import 'Button.dart';

// ignore: camel_case_types
class buttonList extends StatefulWidget {
  final List<Color> colorArray;
  final List<Size> dimensionsArray;
  const buttonList({required this.colorArray, required this.dimensionsArray});

  @override
  State<buttonList> createState() => _buttonListState();
}

// ignore: camel_case_types
class _buttonListState extends State<buttonList> {
  late List<Color> colorArray = widget.colorArray;
  late List<Size> dimensionsArray = widget.dimensionsArray;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: colorArray.map((item) {
        return Button(
          label: '1',
          color: item,
          dimensions: dimensionsArray[colorArray.indexOf(item)],
        );
      }).toList(),
    );
  }
}
