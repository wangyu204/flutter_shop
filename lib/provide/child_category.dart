import 'package:flutter/material.dart';
import '../model/category.dart';

class ChildCategory with ChangeNotifier {
  int value = 0;

  increment() {
    value++;
    notifyListeners();
  }
}
