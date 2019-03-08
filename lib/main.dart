import 'package:flutter/material.dart';

import 'package:fluro/fluro.dart';
import 'package:flutter_wanandroid/config/index.dart';



class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;

    final app = MaterialApp(
      title: 'Flutter WanAndroid',
      debugShowMaterialGrid: false, // 是否显示 纸墨设计 基础布局网格，用来调试 UI 的工具
      showPerformanceOverlay: false, // 显示性能标签
      theme: ThemeData(     
        primarySwatch: Colors.deepOrange,
      ),
      onGenerateRoute: Application.router.generator,
    );
     print("initial route = ${app.initialRoute}");
    return app;
  }
}


void main() => runApp(
  App()
);

