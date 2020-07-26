import 'package:flutter/material.dart';
import 'dart:math';

class CustomScrollViewAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
//      scrollDirection: Axis.horizontal,
      slivers: [
        SliverAppBar(
          title:Text("SliverDemo"),
          expandedHeight: 210,
//          Image.asset("images/sex.jpeg",fit: BoxFit.cover,)
          flexibleSpace: FlexibleSpaceBar(
//            title: Text("SliverDemo"),
            background: Image.asset("images/sex.jpeg",fit: BoxFit.cover,),
          ),
//悬停
          pinned: true,
        ),
        SliverSafeArea(
          top: false,
          bottom: false,
          sliver: SliverPadding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
            sliver: SliverGrid(
                delegate:
                SliverChildBuilderDelegate((BuildContext bct, int index) {
                  return Container(
                    color: Color.fromARGB(255, Random().nextInt(256),
                        Random().nextInt(256), Random().nextInt(256)),
                    child: Text(
                      "baby $index",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  );
                }, childCount: 20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                )),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (BuildContext bct, int index) {
              return Container(
                height: 100,
                color: Color.fromARGB(255, Random().nextInt(256),
                    Random().nextInt(256), Random().nextInt(256)),
                child: Text(
                  "baby $index",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              );
            },
            childCount: 6,
          ),
        ),
      ],
    );
  }
}
