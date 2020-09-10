import 'package:flutter/material.dart';

class MinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('我的'),
      ),
      body: new Center(
        child: Icon(
          Icons.assignment_ind,
          size: 130.0,
          color: Colors.blue,
        ),
      ),
    );
  }
}
