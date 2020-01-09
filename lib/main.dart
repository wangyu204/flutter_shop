import 'package:flutter/material.dart';

void main() {
  var myList4 = List<String>.generate(1000, (i) => "Item $i");
  runApp(
    MaterialApp(
      title: 'hello',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(items: myList4),
    ),
  );
}

class Home extends StatelessWidget {
  final List<String> items;

  Home({@required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'helloe',
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(0),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        },
      ),
    );
  }
}
