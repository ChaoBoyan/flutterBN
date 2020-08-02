import 'package:flutter/material.dart';
import 'package:flutterBN/douban/group/group.dart';
import 'package:flutterBN/douban/home/home.dart';
import 'package:flutterBN/douban/mall/mall.dart';
import 'package:flutterBN/douban/profile/my.dart';
import 'package:flutterBN/douban/subject/subject.dart';

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
  YYSubject(),
  YYGroup(),
  YYMall(),
  YYMyPage(),
];