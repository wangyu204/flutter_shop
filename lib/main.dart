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
        child: Container(
          //宽度
          width: 100,
          //高度
          height: 100,
          // 盒子样式
          decoration: new BoxDecoration(
            color: Colors.black,
            //设置Border属性给容器添加边框
            border: new Border.all(
              //为边框添加颜色
              color: Colors.red,
              //边框宽度
              width: 1,
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            '11',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
