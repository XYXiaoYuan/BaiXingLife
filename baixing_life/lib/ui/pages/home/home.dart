import 'package:flutter/material.dart';
import 'home_content.dart';

class XYHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 236, 236, 1.0),
      appBar: AppBar(
        title: Text('百姓生活+'),
      ),
      body: XYHomeContent(),
    );
  }
}