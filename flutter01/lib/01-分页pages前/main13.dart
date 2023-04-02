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
    var templist = listData.map((value) {
      return Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
        child: Column(children: [
          Image.network(value['imageUrl']),
          const SizedBox(height: 10),
          Text(
            value['title'],
            style: const TextStyle(fontSize: 18),
          )
        ]),
      );
    });

    return templist.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisCount: 2, // 一行展示数量
        crossAxisSpacing: 10, // 水平间距
        mainAxisSpacing: 10, // 垂直间距
        childAspectRatio: 1, // 宽高比
        children: _initGridViewData());
  }
}
