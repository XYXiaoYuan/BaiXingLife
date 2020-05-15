import 'dart:io';

import 'package:flutter/material.dart';
import 'home_content.dart';
import '../info/post_my_info.dart';
import '../largetitle/large_title.dart';

class XYHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 236, 236, 1.0),
      appBar: AppBar(
        title: Text('百姓生活+'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            tooltip: '我的信息',
            onPressed: () {
              Navigator.of(context).pushNamed(MCPostMyInfo.routeName);
            },
          ),
          IconButton(
            icon: Icon(Icons.title),
            tooltip: '大标题',
            onPressed: () {
              Navigator.of(context).pushNamed(MCLargeTitle.routeName);
            },
          ),

        ],
      ),
      body: XYHomeContent(),
    );
  }
}