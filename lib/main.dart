import 'package:flutter/material.dart';
import 'MyDrawer.dart';
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "flutter demo",
      theme: new ThemeData(primarySwatch:Colors.blueGrey),
      home: new JanDanApp(),
    );
  }
}

class JanDanApp extends StatefulWidget {
  @override
  JanDanAppState createState() {
    return JanDanAppState();
  }
}

class JanDanAppState extends State<JanDanApp>
    with SingleTickerProviderStateMixin {
  TabController _tabController; //需要定义一个Controller
  List tabs = ["新鲜事", "流行", "无聊图", "段子", "妹子图"];

  @override
  void initState() {
    super.initState();
    // 创建Controller
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("煎蛋"),
        bottom: TabBar(
            isScrollable: true,
            controller: _tabController,
            tabs: tabs.map((e) => Tab(text: e)).toList()),
      ),
      drawer: MyDrawer(),
      body: TabBarView(
          controller: _tabController,
          children: tabs.map((e) {
            return Container(
              alignment: Alignment.center,
              child: Text(e, textScaleFactor: 5),
            );
          }).toList()),
    );
  }
}
