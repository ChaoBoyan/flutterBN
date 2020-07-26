
//方式二： 通过一个自定义类
import 'package:flutter/material.dart';

class YYBottomBarItem extends BottomNavigationBarItem {
  YYBottomBarItem(Icon icon, String title)
      : super(icon: icon, title: Text(title));
}

//方式一：通过一个抽取方法
// ignore: missing_return
BottomNavigationBarItem buildBottomItem(Icon icon,String title) {
  return BottomNavigationBarItem(icon: icon, title: Text(title));
}