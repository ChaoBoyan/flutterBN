import 'package:flutter/material.dart';
import 'package:flutterBN/douban/main/init_items.dart';

class YYMainPage extends StatefulWidget {
  @override
  _YYMainPageState createState() => _YYMainPageState();
}

class _YYMainPageState extends State<YYMainPage> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
//        index :page切换
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        type: BottomNavigationBarType.fixed,
//    currentIndex: bar的切换
        currentIndex: _currentIndex,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

}


