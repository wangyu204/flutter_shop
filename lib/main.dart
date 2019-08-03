import 'package:flutter/material.dart';
import 'package:provide/provide.dart';

import './pages/index_page.dart';
import './provide/counterP.dart';
import './provide/child_categoryP.dart';
import './provide/category_goods_listP.dart';

void main() {
  var counter = CounterP();
  var childCategory = ChildCategoryP();
  var categoryGoodsList = CategoryGoodsListP();

  var providers = Providers();

  providers
    ..provide(Provider<CounterP>.value(counter))
    ..provide(Provider<ChildCategoryP>.value(childCategory))
    ..provide(Provider<CategoryGoodsListP>.value(categoryGoodsList));

  runApp(ProviderNode(child: MyApp(), providers: providers));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'ewell商城',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.pink,
        ),
        home: IndexPage(),
      ),
    );
  }
}
