import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/home.dart';
import '../category/category.dart';
import '../shoppingcart/shopping_cart.dart';
import '../mine/mine.dart';

final List<Widget> pages = [
  XYHomeScreen(),
  XYCategoryScreen(),
  XYShoppingCartScreen(),
  XYMineScreen()
];

final List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(
    title: Text("首页"),
    icon: Icon(CupertinoIcons.home)
  ),
  BottomNavigationBarItem(
    title: Text("分类"),
    icon: Icon(CupertinoIcons.search)
  ),
  BottomNavigationBarItem(
    title: Text("购物车"),
    icon: Icon(CupertinoIcons.shopping_cart)
  ),
  BottomNavigationBarItem(
    title: Text("会员中心"),
    icon: Icon(CupertinoIcons.profile_circled)
  )
];