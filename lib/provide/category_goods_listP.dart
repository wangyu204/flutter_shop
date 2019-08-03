import 'package:flutter/material.dart';
import '../model/categoryGoodsListM.dart';

class CategoryGoodsListP with ChangeNotifier {
  List<CategoryListData> goodsList = [];

  //点击大类时更换商品列表
  getGoodsList(List<CategoryListData> list) {
    goodsList = list;
    notifyListeners();
  }

  getMoreList(List<CategoryListData> list) {
    goodsList.addAll(list);
    notifyListeners();
  }
}
