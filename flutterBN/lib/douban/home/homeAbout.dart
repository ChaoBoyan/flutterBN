import 'package:flutter/material.dart';

//class YYHomeAbout extends StatefulWidget {
//
//  static const rounterName = "/about";
//
//  @override
//  _YYHomeAboutState createState() => _YYHomeAboutState();
//}
//
//class _YYHomeAboutState extends State<YYHomeAbout> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(title: Text("关于"),),
//      body: Container(
//        child: Center(
//          child: RaisedButton(onPressed: (){
//
//          },
//            child: Text("关于我们"),
//          ),
//        ),
//      ),
//    );
//  }
//}

class YYHomeAbout extends StatelessWidget {

  static const rounterName = "/about";
  @override
  Widget build(BuildContext context) {
    print("pop重新rebuild");
    return Scaffold(
      appBar: AppBar(title: Text("关于"),),
      body: Container(
        child: Center(
          child: RaisedButton(onPressed: (){

          },
            child: Text("关于我们"),
          ),
        ),
      ),
    );
  }
}
