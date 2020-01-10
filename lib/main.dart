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
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('搜索栏'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(
                    context: context, delegate: HomePageSearchDelegate());
              }),
        ],
      ),
    );
  }
}

class HomePageSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          }),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final itemList = query.isEmpty
        ? ['1', '2']
        : ['1', '111', '2', '222']
            .where((input) => input.startsWith(query))
            .toList();
    return ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) => ListTile(
              title: RichText(
                text: TextSpan(
                  text: itemList[index].substring(0, query.length),
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: itemList[index].substring(query.length),
                        style: TextStyle(color: Colors.grey))
                  ],
                ),
              ),
            ));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      //宽度
      width: 100,
      //高度
      height: 100,
      // 盒子样式
      decoration: new BoxDecoration(
        color: Colors.green,
        //设置Border属性给容器添加边框
        border: new Border.all(
          //为边框添加颜色
          color: Colors.green,
          //边框宽度
          width: 0,
        ),
      ),
      child: Text('${query}'),
    );
  }
}
