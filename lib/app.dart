import 'package:calcolandri/components/button_list.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: prefer_const_constructors
  final TextStyle style = TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  TextEditingController dataController = TextEditingController();

  String data = "";

  String removeLastCharacter(String text) {
    if (text.isNotEmpty) {
      return text.substring(0, text.length - 1);
    }
    return text;
  }

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
              SizedBox(
                child: TextField(
                  controller: dataController,
                  style: style,
                  enabled: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    ButtonList(
                      // ignore: prefer_const_literals_to_create_immutables
                      colorArray: [
                        Color(0xFF616161),
                        Colors.black45,
                        Colors.black45,
                        Colors.black45,
                        Colors.black45,
                      ],
                      // ignore: prefer_const_literals_to_create_immutables
                      dimensionsArray: [
                        const Size(100, 80),
                        const Size(100, 80),
                        const Size(100, 80),
                        const Size(100, 80),
                        const Size(100, 80),
                      ],

                      // ignore: prefer_const_literals_to_create_immutables
                      labelArray: [
                        Text("Ac", style: style),
                        Text("7", style: style),
                        Text("4", style: style),
                        Text("1", style: style),
                        Text("Sin", style: style),
                      ],

                      // ignore: prefer_const_literals_to_create_immutables
                      onPressedArray: [
                        () {
                          setState(() {
                            data = "";
                            dataController.text = data;
                          });
                        },
                        () {
                          setState(() {
                            data += '7';
                            dataController.text = data;
                          });
                        },
                        () {
                          setState(() {
                            data += '4';
                            dataController.text = data;
                          });
                        },
                        () {
                          setState(() {
                            data += '1';
                            dataController.text = data;
                          });
                        },
                        () {
                          print("Sin");
                        },
                      ],
                    ),
                    // ignore: prefer_const_constructors
                    ButtonList(
                      // ignore: prefer_const_literals_to_create_immutables
                      colorArray: [
                        Color(0xFF616161),
                        Colors.black45,
                        Colors.black45,
                        Colors.black45,
                        Colors.black45,
                      ],
                      // ignore: prefer_const_literals_to_create_immutables
                      dimensionsArray: [
                        const Size(100, 80),
                        const Size(100, 80),
                        const Size(100, 80),
                        const Size(100, 80),
                        const Size(100, 80),
                      ],

                      // ignore: prefer_const_literals_to_create_immutables
                      labelArray: [
                        Icon(Icons.backspace, color: Colors.white, size: 30),
                        Text("8", style: style),
                        Text("5", style: style),
                        Text("2", style: style),
                        Text("0", style: style),
                      ],

                      // ignore: prefer_const_literals_to_create_immutables
                      onPressedArray: [
                        () {
                          setState(() {
                            data = removeLastCharacter(data);
                            dataController.text = data;
                          });
                        },
                        () {
                          setState(() {
                            data += '8';
                            dataController.text = data;
                          });
                        },
                        () {
                          setState(() {
                            data += '5';
                            dataController.text = data;
                          });
                        },
                        () {
                          setState(() {
                            data += '2';
                            dataController.text = data;
                          });
                        },
                        () {
                          setState(() {
                            data += '0';
                            dataController.text = data;
                          });
                        },
                      ],
                    ),
                    ButtonList(
                      // ignore: prefer_const_literals_to_create_immutables
                      colorArray: [
                        Color.fromRGBO(58, 53, 121, 0.8),
                        Colors.black45,
                        Colors.black45,
                        Colors.black45,
                        Colors.black45,
                      ],
                      // ignore: prefer_const_literals_to_create_immutables
                      dimensionsArray: [
                        const Size(100, 80),
                        const Size(100, 80),
                        const Size(100, 80),
                        const Size(100, 80),
                        const Size(100, 80),
                      ],

                      // ignore: prefer_const_literals_to_create_immutables
                      labelArray: [
                        Text("/", style: style),
                        Text("9", style: style),
                        Text("6", style: style),
                        Text("3", style: style),
                        Text(".", style: style),
                      ],

                      // ignore: prefer_const_literals_to_create_immutables
                      onPressedArray: [
                        () {
                          print("/");
                        },
                        () {
                          setState(() {
                            data += '9';
                            dataController.text = data;
                          });
                        },
                        () {
                          setState(() {
                            data += '6';
                            dataController.text = data;
                          });
                        },
                        () {
                          setState(() {
                            data += '3';
                            dataController.text = data;
                          });
                        },
                        () {
                          setState(() {
                            data += '.';
                            dataController.text = data;
                          });
                        },
                      ],
                    ),
                    ButtonList(
                      // ignore: prefer_const_literals_to_create_immutables
                      colorArray: [
                        Color.fromRGBO(58, 53, 121, 0.8),
                        Color.fromRGBO(58, 53, 121, 0.8),
                        Color.fromRGBO(58, 53, 121, 0.8),
                        Color.fromRGBO(58, 53, 121, 0.8),
                      ],
                      // ignore: prefer_const_literals_to_create_immutables
                      dimensionsArray: [
                        const Size(100, 80),
                        const Size(100, 80),
                        const Size(100, 167),
                        const Size(100, 80),
                      ],

                      // ignore: prefer_const_literals_to_create_immutables
                      labelArray: [
                        Text("*", style: style),
                        Text("-", style: style),
                        Text("+", style: style),
                        Text("=", style: style),
                      ],

                      // ignore: prefer_const_literals_to_create_immutables
                      onPressedArray: [
                        () {
                          print("*");
                        },
                        () {
                          print("-");
                        },
                        () {
                          print("+");
                        },
                        () {
                          print("=");
                        },
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
