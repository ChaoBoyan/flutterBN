
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YYUserInfoViewModel with ChangeNotifier {
    String _name = "";

    String get name => _name;

    changeName(String newname){
      _name = newname;
      notifyListeners();
    }

  set name(String value) {
    _name = value;
    notifyListeners();
  }
}