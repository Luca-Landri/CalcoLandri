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
                          color: Color.fromARGB(167, 63, 55, 55),
                        ),
                        // ignore: prefer_const_constructors
                        Button(
                          label: "7",
                          color: Color.fromRGBO(32, 22, 118, 1),
                        ),
                        Button(
                          label: "4",
                          color: Colors.black,
                        ),
                        Button(
                          label: "1",
                          color: Colors.black,
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
                          color: Color.fromARGB(167, 63, 55, 55),
                        ),
                        // ignore: prefer_const_constructors
                        Button(
                          label: "8",
                          color: Colors.black,
                        ),
                        Button(
                          label: "5",
                          color: Colors.black,
                        ),
                        Button(
                          label: "2",
                          color: Colors.black,
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
                          color: Color.fromRGBO(32, 22, 118, 1),
                        ),
                        // ignore: prefer_const_constructors
                        Button(
                          label: "9",
                          color: Colors.black,
                        ),
                        Button(
                          label: "6",
                          color: Colors.black,
                        ),
                        Button(
                          label: "3",
                          color: Colors.black,
                        ),
                        Button(
                          label: ".",
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // ignore: prefer_const_constructors
                        Button(
                          label: "*",
                          color: Color.fromRGBO(32, 22, 118, 1),
                        ),
                        // ignore: prefer_const_constructors
                        Button(
                          label: "-",
                          color: Color.fromRGBO(32, 22, 118, 1),
                        ),
                        Placeholder(
                          fallbackHeight: 200,
                          fallbackWidth: 100,
                        ),
                        Button(
                          label: "=",
                          color: Color.fromRGBO(32, 22, 118, 1),
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
