import 'package:flutter/material.dart';
import 'post_content.dart';

class MCPostMyInfo extends StatelessWidget {
  static const String routeName = '/post_my_info';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的信息'),
        elevation: 0.0,
      ),
      body: MCPostContent(),
    );
  }
}