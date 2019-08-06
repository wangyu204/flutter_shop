import 'package:flutter/material.dart';
import '../model/categoryM.dart';

class ChildCategoryP with ChangeNotifier {
  List<BxMallSubDto> childCategoryList = [];
  int childIndex = 0; //
  int categoryIndex = 0; //大类索引
  String categoryId = '4'; //大类的id(默认是白酒)
  String subId = ''; //小类id
  int page = 1; //列表也页数
  String noMoreText = ''; //显示没有数据的文字

  //首页点击类别是更改类别
  changeCategory(String id, int index) {
    categoryId = id;
    categoryIndex = index;
    subId = '';
    notifyListeners();
  }

  getChildCategory(List<BxMallSubDto> list, String id) {
    //添加一个默认全部
    BxMallSubDto all = BxMallSubDto();
    all.mallSubId = '';
    all.mallCategoryId = '00';
    all.mallSubName = '全部';
    all.comments = 'null';
    childCategoryList = [all];
    childCategoryList.addAll(list);

    childIndex = 0;
    categoryId = id;
    page = 1;
    noMoreText = '';

    notifyListeners();
  }

//改变子类索引
  changeChildIndex(index, String id) {
    childIndex = index;
    subId = id;
    page = 1;
    noMoreText = '';

    notifyListeners();
  }

  //增加page的方法
  addPage() {
    page++;
  }

  //改变
  changeNoMore(String text) {
    noMoreText = text;
    notifyListeners();
  }
}
