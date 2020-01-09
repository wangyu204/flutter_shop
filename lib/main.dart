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
      body: Stack(
        children: <Widget>[
          Container(
            width: 375,
            height: 500,
            // 盒子样式
            decoration: new BoxDecoration(
              color: Colors.white,
              //设置Border属性给容器添加边框
              border: new Border.all(
                //为边框添加颜色
                color: Colors.white,
                //边框宽度
                width: 1,
              ),
            ),
            child: Text('wangyu'),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            width: 375,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.blue,
              child: Text('底部'),
            ),
          ),
        ],
      ),
    );
  }
}
