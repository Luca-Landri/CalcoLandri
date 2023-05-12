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
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // ignore: prefer_const_constructors
                        Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
                        // ignore: prefer_const_constructors
                        Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
                        Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
                        Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
                        Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
                      ],
                    ),
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // ignore: prefer_const_constructors
                        Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
                        // ignore: prefer_const_constructors
                        Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
                        Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
                        Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
                        Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
                      ],
                    ),
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // ignore: prefer_const_constructors
                        Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
                        // ignore: prefer_const_constructors
                        Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
                        Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
                        Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
                        Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
                      ],
                    ),
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // ignore: prefer_const_constructors
                        Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
                        // ignore: prefer_const_constructors
                        Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
                        Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
                        Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
                        Placeholder(
                          fallbackHeight: 100,
                          fallbackWidth: 100,
                        ),
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
