import 'package:flutter/material.dart';
import '../model/categoryM.dart';

class ChildCategoryP with ChangeNotifier {
  List<BxMallSubDto> childCategoryList = [];

  getChildCategory(List<BxMallSubDto> list) {
    //添加一个默认全部
    BxMallSubDto all = BxMallSubDto();
    all.mallSubId = '00';
    all.mallCategoryId = '00';
    all.mallSubName = '全部';
    all.comments = 'null';
    childCategoryList = [all];
    childCategoryList.addAll(list);

    notifyListeners();
  }
}
