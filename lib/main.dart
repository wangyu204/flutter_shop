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
        alignment: FractionalOffset(0.5, 1),
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
                'http://7xtqgc.com1.z0.glb.clouddn.com/FmmbTsaBQBZ-W0fgKMYrqPMvlO1D'),
            //圆半径大小r，直接就是2*r
            radius: 100,
          ),
          Container(
            // 盒子样式
            decoration: new BoxDecoration(
              color: Colors.blue,
              //设置Border属性给容器添加边框
              border: new Border.all(
                //为边框添加颜色
                color: Colors.blue,
                //边框宽度
                width: 1,
              ),
            ),
            child: Text('wangyu'),
          ),
        ],
      ),
    );
  }
}
