import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  static const String routeName = "/cont";
  const Containers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Ui"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 150,
            color: Colors.red,
            child: Text("Container 1 "),
          ),
          Container(
            height: 50,
            width: 150,
            color: Colors.blue,
            child: Text("Container 1 "),
          ),
          Container(
            height: 50,
            width: 150,
            color: Colors.green,
            child: Text("Container 1 "),
          ),
        ],
      )),
    );
  }
}
