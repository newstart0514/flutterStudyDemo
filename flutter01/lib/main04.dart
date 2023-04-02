import 'package:flutter/material.dart';
import './routers/routers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'flutter APP',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: const Tabs());
        initialRoute: '/', // 初始路由
        // 配置路由
        onGenerateRoute: onGenerateRoute);
  }
}
