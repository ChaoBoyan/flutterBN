import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterBN/prepare/RichText.dart';
import 'package:flutterBN/prepare/ListBuild.dart';


class DetailViewController extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ControllerWidget();
  }
}

class ControllerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text(
//          "首页",
//          style: TextStyle(color: Colors.white, fontSize: 18),
//        ),
//      ),
      body: Container(
        child: Center(child: Text("详情页")),
      ),
    );
  }
}
