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
  List<int> mList = List();
  List<ExpandStateBean> modelList = List();

  void _changeCurrentModelState(int index, bool flag) {
    setState(() {
      modelList.forEach((item) {
        if (item.index == index) {
          item.isOpen = !flag;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索栏'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(0),
        child: ExpansionPanelList(
          expansionCallback: (index, flag) {
            _changeCurrentModelState(index, flag);
          },
          children: mList.map((index) {
            return ExpansionPanel(
              headerBuilder: (ctx, flag) {
                return ListTile(
                  title: Text('This is No.${index}'),
                );
              },
              body: ListTile(
                title: Text('expansion No.${index}'),
              ),
              isExpanded: modelList[index].isOpen,
            );
          }).toList(),
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 0; i < 10; ++i) {
      mList.add(i);
      modelList.add(ExpandStateBean(i, false));
    }
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

class ExpandStateBean {
  var isOpen;
  var index;

  ExpandStateBean(this.index, this.isOpen);
}
