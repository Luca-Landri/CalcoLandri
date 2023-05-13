// ignore_for_file: library_private_types_in_public_api

import 'package:calcolandri/components/button.dart';
import 'package:flutter/material.dart';

class ButtonList extends StatefulWidget {
  final List<Color> colorArray;
  final List<Size> dimensionsArray;
  final List<dynamic> labelArray;
  final List<Function> onPressedArray;

  const ButtonList({
    required this.colorArray,
    required this.dimensionsArray,
    required this.labelArray,
    required this.onPressedArray,
  });

  @override
  _ButtonListState createState() => _ButtonListState();
}

class _ButtonListState extends State<ButtonList> {
  late List<Color> colorArray = widget.colorArray;
  late List<Size> dimensionsArray = widget.dimensionsArray;
  late List<dynamic> labelArray = widget.labelArray;
  late List<Function> onPressedArray = widget.onPressedArray;

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
          onPressed: () {
            // ignore: avoid_print
            onPressedArray[index]();
          },
        );
      }).toList(),
    );
  }
}
