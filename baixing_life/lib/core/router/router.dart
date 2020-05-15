import 'package:flutter/material.dart';

import 'package:baixing_life/ui/pages/main/main_screen.dart';
import 'package:baixing_life/ui/pages/info/post_my_info.dart';
import 'package:baixing_life/ui/pages/largetitle/large_title.dart';

class XYRouter {
  static final String initialRoute = XYMainScreen.routeName;

  static final Map<String, WidgetBuilder> routes = {
    XYMainScreen.routeName: (ctx) => XYMainScreen(),
    MCPostMyInfo.routeName: (ctx) => MCPostMyInfo(),
    MCLargeTitle.routeName: (ctx) => MCLargeTitle(),

  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}