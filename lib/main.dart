import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'hello',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'helloe',
          textAlign: TextAlign.center,
        ),
      ),
      body: Row(
        children: [
          RaisedButton(
            onPressed: () {},
            color: Colors.blue,
            child: Text('button'),
          ),
          Expanded(
            child: RaisedButton(
              onPressed: () {},
              color: Colors.red,
              child: Text('button'),
            ),
          ),
          RaisedButton(
            onPressed: () {},
            color: Colors.green,
            child: Text('button'),
          ),
        ],
      ),
    );
  }
}
