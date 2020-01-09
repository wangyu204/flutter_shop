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
      body: Column(
        //主轴居中，垂直方向
        mainAxisAlignment: MainAxisAlignment.start, //最上面
        //副轴,左对齐，水平方向
        crossAxisAlignment: CrossAxisAlignment.start, //最左边
        children: [
          Text('我是第一行'),
          Text('我是第一行我是第一行我是第一行我是第一行'),
          Text('我是第一行我是第一行我是第一行'),
        ],
      ),
    );
  }
}
