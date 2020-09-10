import 'package:flutter/material.dart';
import 'package:flutter_shop/ui/cart_page.dart';
import 'package:flutter_shop/ui/mine_page.dart';
import 'package:flutter_shop/ui/index_page.dart';
import 'package:flutter_shop/ui/discover_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Tab(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class Tab extends StatefulWidget {
  @override
  _TabState createState() => _TabState();
}

class _TabState extends State<Tab> {
  int _currentIndex = 0;
  List _list = [IndexPage(),DiscoverPage(),  CartPage(), MinePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this._list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        iconSize: 24,
        //icon大小
        fixedColor: Colors.cyan,
        //选中颜色
        type: BottomNavigationBarType.fixed,
        //配置底部tabs可以有多个，不会被挤下去
        items: [

          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(icon: Icon(Icons.category), title: Text('好物推荐')),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart), title: Text('购物车')),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment_ind), title: Text('我的')),
        ],
      ),
    );
  }
}


