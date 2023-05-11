import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calcolandri',
      home: Scaffold(
        body: Container(
          color: Colors.black87,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ignore: prefer_const_constructors
              Placeholder(
                fallbackHeight: 200,
                fallbackWidth: 100,
              ),
              // ignore: prefer_const_constructors
              Placeholder(
                fallbackHeight: 550,
                fallbackWidth: 100,
              ),
            ],
          ),
        ),
        // add style to the column
      ),
    );
  }
}
