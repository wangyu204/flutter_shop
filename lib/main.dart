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
  Color _color = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('tooltip'),
        ),
        body: Stack(
          children: <Widget>[
            DraggleWidget(
              offset: Offset(80, 80),
              size: Size(100, 100),
              color: Colors.tealAccent,
            ),
            DraggleWidget(
              offset: Offset(200, 80),
              size: Size(100, 100),
              color: Colors.redAccent,
            ),
            Center(
              child: DragTarget(
                onAccept: (Color color) {
                  _color = color;
                },
                builder: (ctx, candidateData, rejectedData) {
                  return Container(
                    width: 200,
                    height: 200,
                    color: _color,
                  );
                },
              ),
            )
          ],
        ));
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

class DraggleWidget extends StatefulWidget {
  final Offset offset;
  final Size size;
  final Color color;

  DraggleWidget({this.offset, @required this.size, this.color});

  @override
  DraggleWidgetState createState() => new DraggleWidgetState();
}

class DraggleWidgetState extends State<DraggleWidget> {
  Offset offset = Offset(0, 0);
  Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: Draggable(
        data: widget.color,
        child: Container(
          //宽度
          width: size.width,
          //高度
          height: size.height,
          //子元素对齐方式 上左
          alignment: Alignment.topLeft,
          // 盒子样式
          decoration: new BoxDecoration(
            color: widget.color,
            //设置Border属性给容器添加边框
            border: new Border.all(
              //为边框添加颜色
              color: widget.color,
              //边框宽度
              width: 0,
            ),
          ),
        ),
        feedback: Container(
          //宽度
          width: size.width * 1.1,
          //高度
          height: size.height * 1.1,
          //子元素对齐方式 上左
          alignment: Alignment.topLeft,
          // 盒子样式
          decoration: new BoxDecoration(
            color: widget.color.withOpacity(0.5),
            //设置Border属性给容器添加边框
            border: new Border.all(
              //为边框添加颜色
              color: widget.color.withOpacity(0.5),
              //边框宽度
              width: 0,
            ),
          ),
        ),
        onDraggableCanceled: (Velocity velocity, Offset offset) {
          setState(() {
            this.offset = offset;
          });
        },
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    offset = widget.offset;
    size = widget.size;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(DraggleWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
