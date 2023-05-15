import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final Widget label;
  final Color color;
  final Size dimensions;
  final Function onPressed;
  // ignore: prefer_const_constructors_in_immutables
  Button({
    required this.label,
    required this.color,
    required this.dimensions,
    required this.onPressed,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  late Widget label = widget.label;
  late Color color = widget.color;
  late Size dimensions = widget.dimensions;
  late Function onPressed = widget.onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.5),
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color),
            minimumSize: MaterialStateProperty.all<Size>(dimensions),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(15.0), // Border radius of 10.0
              ),
            ),
          ),
          onPressed: () {
            // ignore: avoid_print
            onPressed();
          },
          child: label
          // ignore: prefer_const_constructors
          ),
    );
  }
}
