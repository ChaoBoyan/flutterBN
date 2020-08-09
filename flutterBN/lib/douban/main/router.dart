import 'package:flutter/material.dart';
import 'package:flutterBN/douban/home/homeAbout.dart';
import 'package:flutterBN/douban/home/homeDetail.dart';

Map<String, WidgetBuilder> routes = {
  YYHomeDetialPage.rounterName :  (ctx) => YYHomeDetialPage(),
  YYHomeAbout.rounterName : (ctx) => YYHomeAbout(),
};