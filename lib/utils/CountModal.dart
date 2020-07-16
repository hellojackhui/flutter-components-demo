import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountModal with ChangeNotifier {
  int count;
  int get getcount => count;
  void increment() {
    count++;
    notifyListeners();
  } 
}