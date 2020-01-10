
import 'package:flutter/material.dart';

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
  List<Widget> list = [];


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery
        .of(context)
        .size
        .width;
    final height = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      appBar: AppBar(
        title: Text('wrap'),
      ),
      body: Center(
        child: Container(
          //宽度
          width: width,
          //高度
          height: height / 2.0,
          // 盒子样式
          decoration: new BoxDecoration(
            color: Colors.grey,
            //设置Border属性给容器添加边框
            border: new Border.all(
              //为边框添加颜色
              color: Colors.grey,
              //边框宽度
              width: 0,
            ),
          ),
          child: Wrap(
            children: list,
            spacing: 8.0,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list..add(_buildAddButton());
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

  Widget _buildAddButton() {
    return GestureDetector(
      onTap: () {
        if (list.length < 9) {
          //一定要放在这里添加不然不生效
          setState(() {
            list.insert(list.length - 1, _buildPhoto());
          });
        }
      },
      child: Container(
        //宽度
        width: 80,
        //高度
        height: 80,
        margin: EdgeInsets.all(8),
        // 盒子样式
        decoration: new BoxDecoration(
          color: Colors.yellow,
          //设置Border属性给容器添加边框
          border: new Border.all(
            //为边框添加颜色
            color: Colors.yellow,
            //边框宽度
            width: 0,
          ),
        ),
        child: Icon(Icons.add),
      ),
    );
  }


  Widget _buildPhoto() {
    return Container(
      //宽度
      width: 80,
      //高度
      height: 80,
      margin: EdgeInsets.all(8),
      alignment: Alignment.center,
      // 盒子样式
      decoration: new BoxDecoration(
        color: Colors.yellow,
        //设置Border属性给容器添加边框
        border: new Border.all(
          //为边框添加颜色
          color: Colors.yellow,
          //边框宽度
          width: 0,
        ),
      ),
      child: Text('text'),
    );
  }
}
