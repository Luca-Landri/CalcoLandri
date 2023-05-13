import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String label;
  final Color color;
  final Size dimensions;
  // ignore: prefer_const_constructors_in_immutables
  Button({
    required this.label,
    required this.color,
    required this.dimensions,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  late String label = widget.label;
  late Color color = widget.color;
  late Size dimensions = widget.dimensions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.5),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          minimumSize: MaterialStateProperty.all<Size>(dimensions),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(10.0), // Border radius of 10.0
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          label,
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
