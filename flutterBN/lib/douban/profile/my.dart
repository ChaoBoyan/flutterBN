import 'package:flutter/material.dart';
import 'package:flutterBN/douban/profile/my_info_viewmodel.dart';
import 'package:flutterBN/prepare/share/YYScreenKit.dart';
import 'package:provider/provider.dart';
import 'package:flutterBN/prepare/extention/double_extention.dart';
import 'package:flutterBN/prepare/extention/int_extention.dart';

class YYMyPage extends StatefulWidget {
  @override
  _YYMyPageState createState() => _YYMyPageState();
}

class _YYMyPageState extends State<YYMyPage> {
  @override
  Widget build(BuildContext context) {
    print("YYMyPage_调用了build方法");
//方式一
//    String userName = Provider.of<YYUserInfoViewModel>(context).name;
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
          print("YYMyPage_调用了Consumer局部刷新方法");
          print( "宽：${YYScreenKit.screenWith} ,高: ${YYScreenKit.screenHeight}");
          print("缩放宽：${YYScreenKit.setPx(200)},缩放高：${YYScreenKit.setPx(300)}");
          print("extention_double缩放宽：${200.0.px},extention缩放高：${300.0.px}");
          print("extention_int缩放宽：${200.px},extention缩放高：${300.px}");
          return Container(child: Text(model.name),width: YYScreenKit.setPx(200),height: YYScreenKit.setPx(300),color: Colors.red,);
        },
      ),
      ));
  }
}
