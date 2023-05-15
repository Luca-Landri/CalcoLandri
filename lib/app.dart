// ignore_for_file: sort_child_properties_last

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

  final TextStyle style2 = TextStyle(
    color: Color(0xFF306474),
    fontSize: 40,
    fontWeight: FontWeight.bold,
    textBaseline: TextBaseline.alphabetic,
    decoration: TextDecoration.none,
  );

  int calculate(List<String> data) {
    int sum = 0;
    for (var items in data) {
      sum += int.parse(items);
    }
    return sum;
  }

  TextEditingController dataController = TextEditingController();
  TextEditingController resultController = TextEditingController();
  List<String> data = ["", ""];
  double result = 0;
  int operation = 0;
  String operationText = "";

  String removeLastCharacter(String text) {
    if (text.isNotEmpty) {
      return text.substring(0, text.length - 1);
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calcolandri',
      home: Scaffold(
        body: Container(
          color: Color(0xFFfbf5d4),
          child: Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ignore: prefer_const_constructors
                SizedBox(
                  child: Column(
                    children: [
                      TextField(
                        controller: dataController,
                        style: style2,
                        enabled: false,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelStyle: style2,
                          alignLabelWithHint: true,
                        ),
                      ),
                      TextField(
                        controller: resultController,
                        style: style2,
                        enabled: false,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Result',
                          labelStyle: style2,
                          alignLabelWithHint: true,
                        ),
                      ),
                    ],
                  ),
                  width: 350,
                  height: 200,
                ),
                // ignore: prefer_const_constructors
                Padding(
                  padding: EdgeInsets.only(top: 120),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      ButtonList(
                        // ignore: prefer_const_literals_to_create_immutables
                        colorArray: [
                          Color(0xFFCBDDCA),
                          Color(0xFF306474),
                          Color(0xFF306474),
                          Color(0xFF306474),
                          Color(0xFF306474),
                        ],
                        // ignore: prefer_const_literals_to_create_immutables
                        dimensionsArray: [
                          Size(80, 70),
                          Size(80, 70),
                          Size(80, 70),
                          Size(80, 70),
                          Size(80, 70),
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
                              data.clear();
                              data = ["", ""];
                              dataController.text = "";
                              operation = 0;
                            });
                          },
                          () {
                            setState(() {
                              data[operation] += '7';
                              if (operation == 1) {
                                dataController.text = data[operation - 1] +
                                    operationText +
                                    data[operation];
                              } else {
                                dataController.text = data[operation];
                              }
                            });
                          },
                          () {
                            setState(() {
                              data[operation] += '4';
                              if (operation == 1) {
                                dataController.text = data[operation - 1] +
                                    operationText +
                                    data[operation];
                              } else {
                                dataController.text = data[operation];
                              }
                            });
                          },
                          () {
                            setState(() {
                              data[operation] += '1';
                              if (operation == 1) {
                                dataController.text = data[operation - 1] +
                                    operationText +
                                    data[operation];
                              } else {
                                dataController.text = data[operation];
                              }
                            });
                          },
                          () {
                            setState(() {
                              operation++;
                            });
                          },
                        ],
                      ),
                      // ignore: prefer_const_constructors
                      ButtonList(
                        // ignore: prefer_const_literals_to_create_immutables
                        colorArray: [
                          Color(0xFFCBDDCA),
                          Color(0xFF306474),
                          Color(0xFF306474),
                          Color(0xFF306474),
                          Color(0xFF306474),
                        ],
                        // ignore: prefer_const_literals_to_create_immutables
                        dimensionsArray: [
                          Size(80, 70),
                          Size(80, 70),
                          Size(80, 70),
                          Size(80, 70),
                          Size(80, 70),
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
                              data[operation] =
                                  removeLastCharacter(data[operation]);
                              if (operation == 1) {
                                dataController.text = data[operation - 1] +
                                    operationText +
                                    data[operation];
                              } else if (operation == 0 ||
                                  data[operation] == "") {
                                dataController.text = data[operation];
                              }
                            });
                          },
                          () {
                            setState(() {
                              data[operation] += '8';
                              if (operation == 1) {
                                dataController.text = data[operation - 1] +
                                    operationText +
                                    data[operation];
                              } else {
                                dataController.text = data[operation];
                              }
                            });
                          },
                          () {
                            setState(() {
                              data[operation] += '5';
                              if (operation == 1) {
                                dataController.text = data[operation - 1] +
                                    operationText +
                                    data[operation];
                              } else {
                                dataController.text = data[operation];
                              }
                            });
                          },
                          () {
                            setState(() {
                              data[operation] += '2';
                              if (operation == 1) {
                                dataController.text = data[operation - 1] +
                                    operationText +
                                    data[operation];
                              } else {
                                dataController.text = data[operation];
                              }
                            });
                          },
                          () {
                            setState(() {
                              data[operation] += '0';
                              if (operation == 1) {
                                dataController.text = data[operation - 1] +
                                    operationText +
                                    data[operation];
                              } else {
                                dataController.text = data[operation];
                              }
                            });
                          },
                        ],
                      ),
                      ButtonList(
                        // ignore: prefer_const_literals_to_create_immutables
                        colorArray: [
                          Color(0xFF5a39d0),
                          Color(0xFF306474),
                          Color(0xFF306474),
                          Color(0xFF306474),
                          Color(0xFF306474),
                        ],
                        // ignore: prefer_const_literals_to_create_immutables
                        dimensionsArray: [
                          Size(80, 70),
                          Size(80, 70),
                          Size(80, 70),
                          Size(80, 70),
                          Size(80, 70),
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
                            setState(() {
                              operation++;
                              dataController.text = data[operation];
                            });
                          },
                          () {
                            setState(() {
                              data[operation] += '9';
                              if (operation == 1) {
                                dataController.text = data[operation - 1] +
                                    operationText +
                                    data[operation];
                              } else {
                                dataController.text = data[operation];
                              }
                            });
                          },
                          () {
                            setState(() {
                              data[operation] += '6';
                              if (operation == 1) {
                                dataController.text = data[operation - 1] +
                                    operationText +
                                    data[operation];
                              } else {
                                dataController.text = data[operation];
                              }
                            });
                          },
                          () {
                            setState(() {
                              data[operation] += '3';
                              if (operation == 1) {
                                dataController.text = data[operation - 1] +
                                    operationText +
                                    data[operation];
                              } else {
                                dataController.text = data[operation];
                              }
                            });
                          },
                          () {
                            setState(() {
                              data[operation] += '.';
                              if (operation == 1) {
                                dataController.text = data[operation - 1] +
                                    operationText +
                                    data[operation];
                              } else {
                                dataController.text = data[operation];
                              }
                            });
                          },
                        ],
                      ),
                      ButtonList(
                        // ignore: prefer_const_literals_to_create_immutables
                        colorArray: [
                          Color(0xFF5a39d0),
                          Color(0xFF5a39d0),
                          Color(0xFF5a39d0),
                          Color(0xFF5a39d0),
                        ],
                        // ignore: prefer_const_literals_to_create_immutables
                        dimensionsArray: [
                          Size(80, 70),
                          Size(80, 70),
                          Size(80, 150),
                          Size(80, 70),
                        ],

                        // ignore: prefer_const_literals_to_create_immutables
                        labelArray: [
                          Icon(Icons.close, color: Colors.white, size: 45),
                          Text("-", style: style),
                          Text("+", style: style),
                          Text("=", style: style),
                        ],

                        // ignore: prefer_const_literals_to_create_immutables
                        onPressedArray: [
                          () {
                            setState(() {
                              operation++;
                              dataController.text = data[operation];
                            });
                          },
                          () {
                            setState(() {
                              operation++;
                              dataController.text = data[operation];
                            });
                          },
                          () {
                            for (var i in data) {
                              if (i == "") {
                                setState(() {
                                  resultController.text = "Error";
                                  operation = 0;
                                });
                                break;
                              } else {
                                setState(() {
                                  operation++;
                                  dataController.text += "+";
                                  operationText = "+";
                                });
                              }
                            }
                          },
                          () {
                            for (var i in data) {
                              if (i == "") {
                                setState(() {
                                  resultController.text = "Error";
                                  operation = 0;
                                });
                                break;
                              } else {
                                setState(() {
                                  resultController.text =
                                      calculate(data).toString();
                                  operation = 0;
                                });
                              }
                            }
                          },
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // add style to the column
      ),
    );
  }
}
