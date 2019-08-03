import 'package:flutter/material.dart';

import 'package:provide/provide.dart';
import '../provide/counterP.dart';

class MemberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Provide<CounterP>(
          builder: (context, child, counter) {
            return Text(
              '${counter.value}',
              style: Theme.of(context).textTheme.display1,
            );
          },
        ),
      ),
    );
  }
}
