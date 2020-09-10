import 'package:flutter/material.dart';
class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('购物车'),
      ),
      body: new Center(
        child: Icon(
          Icons.add_shopping_cart,
          size: 130.0,
          color: Colors.blue,
        ),
      ),
    );
  }
}