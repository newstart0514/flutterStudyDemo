import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({super.key});

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('标题'),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Center(
            child: Text(
              '第一屏',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Center(
            child: Text(
              '第二屏',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Center(
            child: Text(
              '第三屏',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Center(
            child: Text(
              '第四屏',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Center(
            child: Text(
              '第五屏',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Center(
            child: Text(
              '第六屏',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
        ],
      ),
    );
  }
}
