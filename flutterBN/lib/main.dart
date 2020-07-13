import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print("1MyApp_StatelessWidget");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: '首页'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() {
    print("2MyHomePage_StatefulWidget");
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  _MyHomePageState() {
    print("3_MyHomePageState");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("4MyHomePageState_initState");
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("5MyHomePageState_build");

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
//        mac option + enter 快速包裹一个widget
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/sex.jpeg",width: 100,),
            RaisedButton(
              onPressed: () {},
              child: Text("RaisedButton"),
            ),
            FlatButton(
              onPressed: () {
                print("click FlatButton");

              },
              autofocus: true,
              color: Colors.red,
              child: Text("FlatButton"),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6))),
            ),
            Text.rich(TextSpan(text: "hello flutter", children: [
              WidgetSpan(
                  child: SizedBox(
                width: 8,
              )),
              WidgetSpan(child: Icon(Icons.favorite, color: Colors.red)),
              WidgetSpan(
                  child: SizedBox(
                width: 8,
              )),
              TextSpan(
                  text: "hi,boy",
                  style: TextStyle(color: Colors.black26, fontSize: 30))
            ])),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("6MyHomePageState_dispose");
  }
}
