import 'package:flutter/material.dart';

void main() => runApp(ListApp());

class ListApp extends StatefulWidget {
  @override
  _ListAppState createState() => _ListAppState();
}

class _ListAppState extends State<ListApp> {
  List<String> qoutes = ["Im the best", "You are the best", "Love nature"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListApp"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: qoutes.map((qoute) {
            return Text(
              qoute,
              style: TextStyle(
                fontSize: 20,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}


// childrens of a col/row can be given by passing map to lists with a widget return 
// toList function and maps can be used togerher with row/col etc 
// children : arr.map(elem){
//     return Text(elem)
// }).toList()
// children: qoutes.map((qoute)=> Text(qoute)).toList();


