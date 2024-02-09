import 'package:flutter/material.dart';

class AppData with ChangeNotifier {
  String _name = 'Augustine Ngobie';

  void changeData(String data) {
    _name = data;
    notifyListeners();
  }

  String get name => _name;
}
