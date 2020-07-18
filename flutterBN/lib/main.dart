import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterBN/GridView.dart';
import 'package:flutterBN/RichText.dart';
import 'package:flutterBN/ListBuild.dart';

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
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
//      home: MyHomePage(title: '首页'),
      home: ControllerWidget(),
    );
  }
}

class ControllerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "首页",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: CustomScrollViewWidget(),
    );
  }
}

class CustomScrollViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    问题一
//    如果没有tabbar ,那么对于刘海屏，就会遮挡一部分视图 ，加 SafeArea ,可以解决，但是滚动无法利用空白部分，有瑕疵
//  这就得 使用 SliverSafeArea 包裹slivierView,这样就能在滚动的时候，利用到空白部分了
//  此时滑动都最底部（iphone无指纹机型)，也会有空白，不会被遮挡

//  问题二
//  此时 要设置 上下左右 两边的间距 ，使用padding 来包裹CustomScrollView，也会出现顶部空白，跟问题一类似了，
//  采用类似的思路，就是 对 slivierView下手，利用SliverPadding 来包裹slivierView，

//    SliverSafeArea   和   SliverPadding ，实战常用，效果还很好，注意嵌套的位置

    return CustomScrollView(
      slivers: [
        SliverSafeArea(
          sliver: SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate((BuildContext bct, int index) {
                  return Container(
                    color: Color.fromARGB(255, Random().nextInt(256),
                        Random().nextInt(256), Random().nextInt(256)),
                    child: Text("baby $index",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                  );
                }, childCount: 20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                )),
          ),
        ),
      ],
    );
  }
}
