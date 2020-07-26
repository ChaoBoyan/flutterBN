import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControllerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScrollViewAddController();
  }
}

//监听滚动 controller
class ScrollViewAddController extends StatefulWidget {
  @override
  _ScrollViewWidgetState createState() => _ScrollViewWidgetState();
}

class _ScrollViewWidgetState extends State<ScrollViewAddController> {
  ScrollController controller = ScrollController();
  bool _isTop = false;

  /** 两种方式监听
   *一 controller 滚动监听：
   * 1.设置默认偏移量offset
   * 2.监听滚动的位置
   *
   * 二 NotificationListener   -- widgets
   * 1.开始滚动 和 结束滚动
   */
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
//      print("监听滚动....${controller.offset}");
      setState(() {
        _isTop = controller.offset >= 1000;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "首页",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: NotificationListener(
        onNotification: (ScrollNotification notification) {
          if (notification is ScrollStartNotification) {
            print("开始滚动");
          } else if (notification is ScrollUpdateNotification) {
//            notification.metrics.pixels 滚动的距离；
//notification.metrics.maxScrollExtent 总滚动的距离
            print("正在滚动....");
          } else if (notification is ScrollEndNotification) {
            print("结束滚动....");
          }
          return true;
        },
        child: ListView.builder(
            controller: controller,
            itemCount: 30,
            itemBuilder: (BuildContext bct, int index) {
              return ListTile(
                leading: IconButton(
                  icon: Icon(
                    CupertinoIcons.paw_solid,
                    size: 30,
                    color: Colors.blueAccent,
                  ),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                ),
                title: Text(
                  "ComeOnBay,$index",
                  style: TextStyle(color: Colors.black87, fontSize: 16),
                ),
                subtitle: Text(
                  "联系方式：18866660000",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              );
            }),
      ),
      floatingActionButton: _isTop
          ? FloatingActionButton(
        onPressed: () {
          controller.animateTo(0, duration: Duration(seconds: 1),
              curve: Curves.easeInCirc);
        },
        child: Icon(Icons.vertical_align_top),
      )
          : null,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
}