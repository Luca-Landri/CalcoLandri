import 'package:calcolandri/components/Button.dart';
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
          decoration: BoxDecoration(
            gradient: LinearGradient(
              // ignore: prefer_const_literals_to_create_immutables
              colors: [
                Colors.blueGrey,
                Colors.black,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
            ),
          ),
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
                        Button(
                          label: "Ac",
                        ),
                        // ignore: prefer_const_constructors
                        Button(
                          label: "7",
                        ),
                        Button(
                          label: "4",
                        ),
                        Button(
                          label: "1",
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
                        Button(
                          label: "<-",
                        ),
                        // ignore: prefer_const_constructors
                        Button(
                          label: "8",
                        ),
                        Button(
                          label: "5",
                        ),
                        Button(
                          label: "2",
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
                        Button(
                          label: "/",
                        ),
                        // ignore: prefer_const_constructors
                        Button(
                          label: "9",
                        ),
                        Button(
                          label: "6",
                        ),
                        Button(
                          label: "3",
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
                        Button(
                          label: "+",
                        ),
                        // ignore: prefer_const_constructors
                        Button(
                          label: "-",
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
