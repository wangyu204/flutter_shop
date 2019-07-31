import 'dart:convert';

import 'package:flutter/material.dart';

import '../service/service_method.dart';
import '../model/category.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    _getCategory();

    return Container(
      child: Center(
        child: Text('分类页面'),
      ),
    );
  }

  void _getCategory() async {
    await request('getCategory').then((val) {
      var data = json.decode(val.toString());
      CategoryModel list = CategoryModel.fromJson(data);
      list.data.forEach((item) => print(item.mallCategoryName));
    });
  }
}

//左侧大类导航
class LeftCategoryNav extends StatefulWidget {
  @override
  _LeftCategoryNavState createState() => _LeftCategoryNavState();
}

class _LeftCategoryNavState extends State<LeftCategoryNav> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
