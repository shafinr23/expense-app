import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
      id: 't1',
      title: 'bake',
      amount: 90.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't9',
      title: 'show',
      amount: 10.30,
      date: DateTime.now(),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              child: Text('chart!'),
              elevation: 5,
              color: Colors.indigoAccent,
            ),
          ),
          Card(
            color: Colors.red,
            child: Text('list of txc'),
          )
        ],
      ),
    );
  }
}
