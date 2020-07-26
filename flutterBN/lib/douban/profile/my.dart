
import 'package:flutter/material.dart';

class YYMyPage extends StatefulWidget {
  @override
  _YYMyPageState createState() => _YYMyPageState();
}

class _YYMyPageState extends State<YYMyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: Text("关于我们"),
    );
  }
}