import 'package:flutter/material.dart';
import 'package:flutterBN/douban/home/home.dart';
import 'package:flutterBN/douban/profile/my.dart';

import 'bottom_bar_item.dart';

List<YYBottomBarItem> items = [
  YYBottomBarItem(Icon(Icons.home),"首页"),
  YYBottomBarItem(Icon(Icons.movie),"书影音"),
  YYBottomBarItem(Icon(Icons.group),"小组"),
  YYBottomBarItem(Icon(Icons.bookmark),"市集"),
  YYBottomBarItem(Icon(Icons.pets),"我的"),
];


List<Widget> pages =  [
  YYHomePage(),
  YYMyPage(),
  YYMyPage(),
  YYMyPage(),
  YYMyPage(),
];