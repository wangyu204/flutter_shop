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
      body: Card(
        child: Column(
          //主轴居中，垂直方向
          mainAxisAlignment: MainAxisAlignment.start, //最上面
          //副轴,左对齐，水平方向
          crossAxisAlignment: CrossAxisAlignment.start, //最左边
          children: [
            ListTile(
              title: Text('1'),
            ),
            new Divider(),
            ListTile(
              title: Text('2'),
            ),
            new Divider(),
            ListTile(
              title: Text('3'),
            ),
            new Divider(),
          ],
        ),
      ),
    );
  }
}
