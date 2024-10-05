import 'package:flutter/material.dart';

class MyController with ChangeNotifier {
  // Your business logic here
  bool isActive = false;

  void toggleActive() {
    isActive = !isActive;
    notifyListeners();
  }
}
