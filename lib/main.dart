import 'package:flutter/material.dart';
import 'package:provide/provide.dart';

import './pages/index_page.dart';
import './provide/counterP.dart';
import './provide/child_categoryP.dart';
import './provide/category_goods_listP.dart';
import 'package:fluro/fluro.dart';
import './routers/application.dart';
import './routers/routes.dart';
import './provide/details_infoP.dart';

void main() {
  var counter = CounterP();
  var childCategory = ChildCategoryP();
  var categoryGoodsList = CategoryGoodsListP();
  var detailsInfoProvide = DetailsInfoProvide();

  var providers = Providers();

  providers
    ..provide(Provider<CounterP>.value(counter))
    ..provide(Provider<ChildCategoryP>.value(childCategory))
    ..provide(Provider<CategoryGoodsListP>.value(categoryGoodsList))
    ..provide(Provider<DetailsInfoProvide>.value(detailsInfoProvide));

  runApp(ProviderNode(child: MyApp(), providers: providers));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //1.fluro初始化
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;

    return Container(
      child: MaterialApp(
        title: 'ewell商城',
        onGenerateRoute: Application.router.generator,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.pink,
        ),
        home: IndexPage(),
      ),
    );
  }
}
