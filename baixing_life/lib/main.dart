import 'package:baixing_life/core/router/router.dart';
import 'package:flutter/material.dart';

import 'package:baixing_life/ui/shared/app_theme.dart';
import 'package:baixing_life/core/sizefit/size_fit.dart';
import 'package:provider/provider.dart';
import 'package:baixing_life/core/viewmodel/initialize_providers.dart';

void main() => runApp(MultiProvider(providers: providers, child: MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 对SizeFit进行初始化
    SizeFit.initialize();

    return MaterialApp(
      title: '百姓生活+',
      // 主题
      theme: XYAppTheme.norTheme,
      // 路由
      initialRoute: XYRouter.initialRoute,
      routes: XYRouter.routes,
      onUnknownRoute: XYRouter.unknownRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}

