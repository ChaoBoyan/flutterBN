import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

import 'douban/main/main.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print("1MyApp_StatelessWidget");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(

//        rgba(79,137,255,1)
//      主题色
        primarySwatch: Colors.red,
//        导航栏颜色
        primaryColor: Color.fromARGB(255, 79, 137, 255),
        primaryColorBrightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      home: YYMainPage(),
    );

  }
}

