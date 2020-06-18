import 'package:flutter/material.dart';
import './Quote.dart';

void main() => runApp(ListApp());

class ListApp extends StatefulWidget {
  @override
  _ListAppState createState() => _ListAppState();
}

class _ListAppState extends State<ListApp> {
  List<Quote> qoutes = [
    Quote(text: "Im the best", author: "Kunal Singh"),
    Quote(text: "You the best", author: "Karan Singh"),
    Quote(text: "Save the best", author: "Komal Singh")
  ];

  Widget getCard(qoute) {
    return Card(
      color: Colors.lime[100],
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text(
            qoute.text,
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            qoute.author,
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }

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
            return getCard(qoute);
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
// card widgets
