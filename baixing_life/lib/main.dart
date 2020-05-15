import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './ui/shared/app_theme.dart';
import './core/router/router.dart';
import './core/sizefit/size_fit.dart';
import './core/viewmodel/initialize_providers.dart';

void main() => runApp(MultiProvider(providers: providers, child: MyApp()));

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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

