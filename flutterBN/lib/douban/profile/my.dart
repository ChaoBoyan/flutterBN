import 'package:flutter/material.dart';
import 'package:flutterBN/douban/profile/my_info_viewmodel.dart';
import 'package:flutterBN/prepare/share/YYScreenKit.dart';
import 'package:provider/provider.dart';

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
          return Container(child: Text(model.name),width: YYScreenKit.setPx(200),height: YYScreenKit.setPx(300),color: Colors.red,);
        },
      ),
      ));
  }
}
