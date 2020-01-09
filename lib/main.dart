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
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          // 创建几列
          crossAxisCount: 3,
          // 列之间的间距
          crossAxisSpacing: 2,
          // 行之间的间距
          mainAxisSpacing: 2,
          // 子孩子的比例
          childAspectRatio: 0.7,
        ),

        // Axis.horizontal 表示横向滑动，scrollDirection: Axis.vertical 表示纵向滑动
        scrollDirection: Axis.vertical,
        // 默认false 是否根据子孩子的宽高自动包裹item自身
        shrinkWrap: false,
        // true表示数据倒序排列 false表示顺序排列
        reverse: false,

        // 设置子孩子item,这里传入子孩子控件
        children: <Widget>[
          new Image.network(
              'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',
              fit: BoxFit.cover),
        ],
      ),
    );
  }
}
