import 'dart:async';

import 'package:flutter/material.dart';

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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _globalKey = GlobalKey<AnimatedListState>();
  bool deleteFlag = true;
  List<String> list = ['第一条', '第二条'];
  Widget _buildItem(index) {
    return ListTile(
      title: Text(list[index]),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          // 执行删除
          _deleteItem(index);
        },
      ),
    );
  }

  _deleteItem(index) {
    if (deleteFlag) {
      deleteFlag = false;
      // 执行删除
      _globalKey.currentState!.removeItem(index, (context, animation) {
        // animation的值是从1到0
        var removeItem = _buildItem(index);
        list.removeAt(index); // 数组中删除数据
        return FadeTransition(
          opacity: animation,
          child: removeItem, // 删除的时候执行动画的元素
        );
      });
      // 解决快速删除的bug
      Timer.periodic(const Duration(milliseconds: 500), (timer) {
        deleteFlag = true;
        timer.cancel();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('标题'),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            list.add('我是新增的数据');
            _globalKey.currentState!.insertItem(list.length - 1);
          },
          child: const Icon(Icons.add)),
      body: AnimatedList(
          key: _globalKey,
          initialItemCount: list.length,
          itemBuilder: ((context, index, animation) {
            // animation的值是从0到1
            return FadeTransition(
              opacity: animation,
              child: _buildItem(index),
            );
          })),
    );
  }
}
