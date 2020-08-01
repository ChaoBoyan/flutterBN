
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YYUserInfoViewModel with ChangeNotifier {
    String _name = "wowowo";

    String get name => _name;

  set name(String value) {
    _name = value;
    notifyListeners();
  }
}