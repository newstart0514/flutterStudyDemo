import 'package:flutter/material.dart';
import './res/listData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('flutter APP')),
        body: const myHomePage(),
      ),
    );
  }
}

// ignore: camel_case_types
class myHomePage extends StatelessWidget {
  const myHomePage({Key? key}) : super(key: key);

  List<Widget> _initGridViewData() {
    List<Widget> tempList = [];

    for (var i = 0; i < 22; i++) {
      tempList.add(Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: Colors.blue),
        child: Text('第${i}个元素', style: const TextStyle(fontSize: 20)),
      ));
    }

    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    // return GridView.count(
    //     padding: const EdgeInsets.all(10),
    //     crossAxisCount: 3,   // 一行展示数量
    //     crossAxisSpacing: 10, // 水平间距
    //     mainAxisSpacing: 10, // 垂直间距
    //     childAspectRatio: 0.7, // 宽高比
    //     children: _initGridViewData());
    return GridView.extent(
        padding: const EdgeInsets.all(10),
        maxCrossAxisExtent: 120, // 固定最大长度
        crossAxisSpacing: 10, // 水平间距
        mainAxisSpacing: 10, // 垂直间距
        childAspectRatio: 0.7, // 宽高比
        children: _initGridViewData());
  }
}
