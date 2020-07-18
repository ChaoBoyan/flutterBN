import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'DetailViewController.dart';

class ScrollViewWidget extends StatefulWidget {
  @override
  _ScrollViewWidgetState createState() => _ScrollViewWidgetState();
}

class _ScrollViewWidgetState extends State<ScrollViewWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext bct, int index) {
          return ListTile(
            leading: IconButton(
                icon: Icon(
                  CupertinoIcons.paw_solid,
                  size: 30,
                  color: Colors.blueAccent,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailViewController()));
                }),
            trailing: Icon(Icons.keyboard_arrow_right,color: Colors.grey,),
            title: Text(
              "ComeOnBay,$index",
              style: TextStyle(color: Colors.black87, fontSize: 16),
            ),
            subtitle: Text(
              "联系方式：18866660000",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          );
        });
  }
}
