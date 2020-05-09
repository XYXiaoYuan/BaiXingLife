import 'package:flutter/material.dart';

import 'package:baixing_life/ui/pages/main/main_screen.dart';

class XYRouter {
  static final String initialRoute = XYMainScreen.routeName;

  static final Map<String, WidgetBuilder> routes = {
    XYMainScreen.routeName: (ctx) => XYMainScreen(),
    

  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}