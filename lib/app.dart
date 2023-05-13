import 'package:calcolandri/components/Button_List.dart';
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
          color: Colors.blueGrey,
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
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    buttonList(
                      colorArray: [
                        Color.fromRGBO(58, 53, 121, 0.8),
                        Colors.blueGrey,
                        Colors.blueGrey,
                        Colors.blueGrey,
                      ],
                      dimensionsArray: [
                        const Size(100, 80),
                        const Size(100, 80),
                        const Size(100, 80),
                        const Size(100, 80),
                      ],
                    ),
                    buttonList(
                      colorArray: [
                        Colors.blueGrey,
                        Colors.blueGrey,
                        Colors.blueGrey,
                        Colors.blueGrey,
                      ],
                      dimensionsArray: [
                        const Size(100, 80),
                        const Size(100, 80),
                        const Size(100, 80),
                        const Size(100, 80),
                      ],
                    ),
                    buttonList(
                      colorArray: [
                        Colors.blueGrey,
                        Colors.blueGrey,
                        Colors.blueGrey,
                        Colors.blueGrey,
                      ],
                      dimensionsArray: [
                        const Size(100, 80),
                        const Size(100, 80),
                        const Size(100, 80),
                        const Size(100, 80),
                      ],
                    ),
                    buttonList(
                      colorArray: [
                        Colors.blueGrey,
                        Colors.blueGrey,
                        Colors.blueGrey,
                        Colors.blueGrey,
                      ],
                      dimensionsArray: [
                        const Size(80, 80),
                        const Size(80, 80),
                        const Size(80, 80),
                        const Size(80, 80),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // add style to the column
      ),
    );
  }
}
