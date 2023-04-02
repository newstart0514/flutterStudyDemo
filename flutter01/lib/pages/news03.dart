import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  final String title;
  final int aid;
  const NewsPage({super.key, this.title = '新闻', this.aid = 1});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 返回到上一页
          Navigator.pop(context);
        },
        child: const Icon(Icons.back_hand),
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text('我是一个新闻页面${widget.aid}'),
      ),
    );
  }
}
