import 'package:flutter/material.dart';

class CreatorPage extends StatefulWidget {
  const CreatorPage({super.key});

  @override
  State<CreatorPage> createState() => _CreatorPageState();
}

class _CreatorPageState extends State<CreatorPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Creator Page',
        home: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios),
                ),
                Text('Creator Page',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          body: Center(
            child: Text('Creator Page'),
          ),
        ));
  }
}
