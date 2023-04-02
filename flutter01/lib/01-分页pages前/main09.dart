import 'package:flutter/material.dart';
import './myFont.dart';

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
  const myHomePage({super.key});

  List<Widget> _initListData() {
    List<Widget> list = [];

    for (var i = 0; i < 20; i++) {
      list.add(ListTile(
        title: Text('我是一个列表--$i'),
      ));
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initListData(),
    );
  }
}
