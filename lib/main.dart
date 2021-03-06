import 'package:flutter/material.dart';
import './Quote.dart';
import './QuoteCard.dart';

void main() => runApp(ListApp());

class ListApp extends StatefulWidget {
  @override
  _ListAppState createState() => _ListAppState();
}

class _ListAppState extends State<ListApp> {
  List<Quote> quotes = [
    Quote(text: "Im the best", author: "Kunal Singh"),
    Quote(text: "You the best", author: "Karan Singh"),
    Quote(text: "Save the best", author: "Komal Singh")
  ];

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
          children: quotes.map((quote) {
            return QuoteCard(
              quote: quote,
              delete: () {
                setState(() {
                  quotes.remove(quote);
                });
              },
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
// card widgets
