import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop1/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    title: '搜索栏',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tooltip'),
      ),
      body: Container(
        //子元素对齐方式 上左
        alignment: Alignment.center,
        // 盒子样式
        decoration: new BoxDecoration(
          color: Colors.white,
          //设置Border属性给容器添加边框
          border: new Border.all(
            //为边框添加颜色
            color: Colors.white,
            //边框宽度
            width: 0,
          ),
        ),
        child: Tooltip(
          message: '我是提示',
          child: Icon(Icons.all_inclusive),
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(HomePage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
