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
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('hello4'),
//      ),
//    );
//  }
//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'helloe',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Text(
          '1fffsdfsdfsdfsdfsdfdsfsdfsfsfsfsfsdfsafsaf',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 13.0,
          ),
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr,
          textScaleFactor: 1.0,
          overflow: TextOverflow.ellipsis,
          locale: Localizations.localeOf(context),
          maxLines: 2,
        ),
      ),
    );
  }
}
