import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('好物推荐'),
      ),
      body: new Center(
        child: Icon(
          Icons.home,
          size: 130.0,
          color: Colors.blue,
        ),
      ),
    );
  }
}