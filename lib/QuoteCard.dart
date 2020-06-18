import 'package:flutter/material.dart';
import './Quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;

  const QuoteCard({
    this.quote,
    this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lime[100],
      margin: EdgeInsets.all(15),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
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
            IconButton(
              icon: Icon(
                Icons.delete,
              ),
              onPressed: delete,
            ),
          ],
        ),
      ),
    );
  }
}
