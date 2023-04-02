import 'package:flutter/material.dart';
import '../search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                // 跳转路由
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const SearchPage();
                }));
              },
              child: const Text('基本路由跳转')),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/news');
              },
              child: const Text('命名路由跳转')),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/search');
              },
              child: const Text('跳转到search')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/from',
                    arguments: {'Title': '我是云云', 'aid': '6666'});
              },
              child: const Text('命名路由传值')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/dialog');
              },
              child: const Text('dialog演示')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pageView');
              },
              child: const Text('pageView演示')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pageViewBuilder');
              },
              child: const Text('pageViewBuilder演示')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/PageViewFullPage');
              },
              child: const Text('PageViewFullPage演示')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pageViewSwiper');
              },
              child: const Text('PageViewSwiper演示')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pageViewAlive');
              },
              child: const Text('PageViewPage演示')),
        ],
      ),
    );
  }
}
