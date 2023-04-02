import 'package:flutter/material.dart';
import '../search.dart';
import '../news.dart';
import '../form.dart';

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
              child: const Text('搜索')),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                // 跳转路由
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const NewsPage();
                }));
              },
              child: const Text('新闻页面')),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                // 跳转路由
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const FromPage();
                }));
              },
              child: const Text('跳转表单页面')),
        ],
      ),
    );
  }
}
