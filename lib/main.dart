import 'package:flutter/material.dart';

void main() => runApp(ListApp());

class ListApp extends StatefulWidget {
  @override
  _ListAppState createState() => _ListAppState();
}

class _ListAppState extends State<ListApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListApp"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                "Heyy",
                style: TextStyle(fontSize: 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
