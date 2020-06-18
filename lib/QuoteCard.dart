import 'package:flutter/material.dart';
import './Quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  const QuoteCard({this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lime[100],
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}