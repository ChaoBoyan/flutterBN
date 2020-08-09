import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterBN/douban/home/homeAbout.dart';
import 'package:flutterBN/douban/profile/my_info_viewmodel.dart';
import 'package:provider/provider.dart';
import 'douban/main/main.dart';
import 'douban/main/router.dart';

/*
provider使用：
1.创建数据 -viewmodel
2.应用程序顶层添加 ChangeNotifierProvider
3.使用共享数据
-3.1 Provide.of: 当Provider中饿数据发生改变的时候，Provider.of所在的widget整个build方法都会重新构建
-3.2 Consumer（推荐）：当provider中的数据发生改变时，只会重新执行consumer的builder
* */
//
//void main() {
//  runApp(ChangeNotifierProvider(
//    child: MyApp(),
//    create: (bct) => YYUserInfoViewModel(),
//  ));
//}
void main() {
  var userModel = YYUserInfoViewModel();
  userModel.name = "yanchaobo";
  runApp(MultiProvider(
//    多个共享数据
    providers: [
      ChangeNotifierProvider(
        create: (bct) => userModel,
      ),
//      ChangeNotifierProvider(
//        create: (bct) => YYUserInfoViewModel(),
//      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print("1MyApp_StatelessWidget");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: routes,
      onGenerateRoute: ,
//      路由钩子,使用场景，处理 没有路由的情况，错误处理
//      onUnknownRoute: (settings){
//        return MaterialPageRoute(builder: (ctx){
//          return YYHomeAbout();
//        }
//        );
//      },
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
