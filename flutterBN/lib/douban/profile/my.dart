import 'package:flutter/material.dart';
import 'package:flutterBN/douban/profile/my_info_viewmodel.dart';
import 'package:provider/provider.dart';

class YYMyPage extends StatefulWidget {
  @override
  _YYMyPageState createState() => _YYMyPageState();
}

class _YYMyPageState extends State<YYMyPage> {
  @override
  Widget build(BuildContext context) {
//方式一
    String userName = Provider.of<YYUserInfoViewModel>(context).name;
//    方式二 Consumer
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: Center(
//        方式一
//          child: Text("${userName}"
//      方式二
      child: Consumer<YYUserInfoViewModel>(
        builder: (bct,model,child){
          return Text(model.name);
        },
      ),
      ));
  }
}
