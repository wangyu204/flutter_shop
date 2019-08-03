import 'package:flutter/material.dart';

class CounterP with ChangeNotifier {
  int value = 0;

  increment() {
    value++;
    notifyListeners();
  }
}
