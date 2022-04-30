import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("COUNTER"),
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: [
            IconButton(onPressed: () => exit(0), icon: Icon(Icons.exit_to_app))
          ],
        ),
        backgroundColor: Colors.orange,
        body: SafeArea(
          child: Center(
            child: Count(),
          ),
        ),
      ),
    );
  }
}

class Count extends StatefulWidget {
  const Count({Key? key}) : super(key: key);

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(50.0),
            child: Text(
              "$count",
              style: TextStyle(color: Colors.black, fontSize: 80),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: RaisedButton(
              color: Colors.black,
              child: Text(
                "COUNT",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  count++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: RaisedButton(
              color: Colors.black,
              child: Text(
                "RESET",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
