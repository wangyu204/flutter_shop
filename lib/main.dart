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
      body: ListView(
          children: <Widget>[
            // 一个有图片和文字组成的简单列表item
            ListTile(
              leading: Icon(Icons.text_rotate_vertical),
              title: Text(''),
              subtitle: Text(''),
              // 右边的图标
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                //TODO:这里处理点击事件
              },
              onLongPress: () {
                //TODO:这里处理长按事件
              },
              selected: true,
            ),
            // 单选框列表item
            CheckboxListTile(
              value: true,
              onChanged: ((bool) {
                //TODO:焦点改变的监听事件写在这里：
              }),
              title: Text(''),
              subtitle: Text(''),
              selected: true,
              activeColor: Colors.teal,
            ),
            // 开关列表item
            SwitchListTile(
              value: true,
              onChanged: ((bool) {
               //TODO:焦点改变的监听事件写在这里：
              }),
              title: Text(''),
              subtitle: Text(''),
              //如果subtitle文字过长，将会以三行显示
              isThreeLine: true,
              selected: true,
              activeColor: Colors.teal,
              //SwitchListTile左边的图标
              secondary: Icon(Icons.account_circle),
            ),
            AboutListTile(
              icon: Icon(Icons.apps),
              //公司logo
              applicationIcon: Image.asset(''),
              //app名称
              applicationName: '关于我们',
              //app版本号
              applicationVersion: 'V1.0.0',
              //版权信息
              applicationLegalese: '版权归XX科技有限公司所有...',
            ),
          ],
      ),
    );
  }
}
