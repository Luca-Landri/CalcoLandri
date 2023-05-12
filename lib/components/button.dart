import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String label;
  // ignore: prefer_const_constructors_in_immutables
  Button({required this.label});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  late String label = widget.label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
        minimumSize: MaterialStateProperty.all<Size>(Size(100, 80)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Border radius of 10.0
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
    );
  }
}
