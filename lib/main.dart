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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('当个支持收缩的控件'),
      ),
      body: ExpansionTile(
        title: Text('Expansion Tile'),
        leading: Icon(Icons.ac_unit),
        backgroundColor: Colors.white12,
        children: <Widget>[
          ListTile(
            title: Text('list tile'),
            subtitle: Text('subtitle'),
          )
        ],
        initiallyExpanded: true,
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
