import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterBN/douban/home/homeDetail.dart';
import 'package:flutterBN/douban/home/model/home_list_entity.dart';
import 'package:flutterBN/douban/profile/my_info_viewmodel.dart';
import 'package:flutterBN/service/home_request.dart';
import 'package:provider/provider.dart';

//https://api.douban.com/v2/movie/in_theaters?apikey=0b2bdeda43b5688921839c8ecb20399b&city=%E5%8C%97%E4%BA%AC&start=0&count=10
class YYHomePage extends StatefulWidget {
  @override
  _YYHomePageState createState() => _YYHomePageState();
}

class _YYHomePageState extends State<YYHomePage> {
  List<HomeListSubject> movies = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print("----Home_initState()--");
    YYHomeRequest.requestMovielist(0).then((value) {
//      value.subjects.forEach((element) {
////        print(element.title);
////      });
      Provider.of<YYUserInfoViewModel>(context,listen: false).name = value.title;
      setState(() {
        movies.addAll(value.subjects);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      floatingActionButton: FloatingActionButton(
        child: IconButton(icon: Icon(Icons.person), onPressed: (){
          Provider.of<YYUserInfoViewModel>(context,listen: false).name = "更换我的name";
        }),
      ),
      body: ListView.builder(
        itemBuilder: (bct, index) {
          return ListTile(
            title: Text("${movies[index].title}"),
            leading: Image.network("${movies[index].images.small}",fit: BoxFit.cover,),
            onTap: ()=>_jumpDetialPage(context),
          );
        },
        itemCount: movies.length,
      ),
    );
  }

  void _jumpDetialPage(BuildContext context){
//    不接收 pop回来的返回值
//    Navigator.of(context).push(MaterialPageRoute(builder: (context) => YYHomeDetialPage()));

//  接收 ，pop返回带来的返回值
//    Future result =  Navigator.of(context).push(MaterialPageRoute(builder: (context) => YYHomeDetialPage()));
//    result.then((value){
//      print(value);
//    });
//  通过路由 方式跳转
//  Navigator.of(context).pushNamed(YYHomeDetialPage.rounterName);

//  路由传参数
    Navigator.of(context).pushNamed(YYHomeDetialPage.rounterName,arguments: "YYHome");
  }
}
