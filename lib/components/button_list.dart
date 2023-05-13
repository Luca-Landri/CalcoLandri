import 'package:flutter/material.dart';

import 'Button.dart';

// ignore: camel_case_types
class buttonList extends StatefulWidget {
  final List<Color> colorArray;
  final List<Size> dimensionsArray;
  // ignore: prefer_const_constructors_in_immutables
  final List<String> labelArray;

  const buttonList(
      {required this.colorArray,
      required this.dimensionsArray,
      required this.labelArray});

  @override
  State<buttonList> createState() => _buttonListState();
}

// ignore: camel_case_types
class _buttonListState extends State<buttonList> {
  late List<Color> colorArray = widget.colorArray;
  late List<Size> dimensionsArray = widget.dimensionsArray;
  late List<String> labelArray = widget.labelArray;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: colorArray.asMap().entries.map((entry) {
        final index = entry.key;
        final item = entry.value;

        return Button(
          label: labelArray[index],
          color: item,
          dimensions: dimensionsArray[index],
        );
      }).toList(),
    );
  }
}
