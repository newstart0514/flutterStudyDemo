import 'package:flutter/material.dart';
import './pages/tabs.dart';
import './pages/search.dart';
import './pages/news.dart';
import './pages/form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        routes: {
          '/': (context) => const Tabs(),
          '/news': (context) => const NewsPage(),
          '/search': (context) => const SearchPage(),
          '/from': (context) {
            return const FromPage();
          }
        });
  }
}
