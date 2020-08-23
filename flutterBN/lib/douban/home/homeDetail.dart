import 'package:flutter/material.dart';
import 'package:flutterBN/douban/home/homeAbout.dart';

class YYHomeDetialPage extends StatefulWidget {
  static const rounterName = "/homedetial";
  @override
  _YYHomeDetialPageState createState() => _YYHomeDetialPageState();
}

class _YYHomeDetialPageState extends State<YYHomeDetialPage> {
  @override
  Widget build(BuildContext context) {
    print("检测 YYHomeDetialPage——pop的时候会rebuild");
//  通过路由传过来的参数
  final Map<String,String> map = ModalRoute.of(context).settings.arguments;
   final String _message = map["a"];
  print(map["a"]);
  print(map["b"]);
//    WillPopScope 监听 默认返回按钮 的点击事件
//    onWillPop : Future.value(true) fullter默认返回 ；Future.value(false) 自定义返回事件
    return WillPopScope(
      onWillPop: () {
        Navigator.of(context).pop("详情页返回了_通过WillPopScope方式");
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("${_message}"),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pop("详情页返回了");
                  },
                  child: Text("详情页返回"),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(YYHomeAbout.rounterName);
                  },
                  child: Text("点击查看关于我们"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    print("YYHomeDetialPage_dispose");
    super.dispose();
  }
}
