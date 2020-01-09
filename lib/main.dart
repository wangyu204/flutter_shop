import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'hello',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    ),
  );
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            final result = await Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondPage()));
            print('${result}');
          },
          color: Colors.blue,
          child: Text('second'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context, 'wangyu');
          },
          color: Colors.blue,
          child: Text('back'),
        ),
      ),
    );
  }
}
