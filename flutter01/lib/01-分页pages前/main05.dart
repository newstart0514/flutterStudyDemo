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

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile(title: Text('我是一个列表')),
        Divider(),
        ListTile(title: Text('我是一个列表')),
        Divider(),
        ListTile(title: Text('我是一个列表')),
        Divider(),
        ListTile(title: Text('我是一个列表')),
        Divider(),
        ListTile(title: Text('我是一个列表')),
        Divider(),
        ListTile(title: Text('我是一个列表')),
        Divider(),
        ListTile(title: Text('我是一个列表')),
        Divider(),
        ListTile(title: Text('我是一个列表')),
        Divider(),
        ListTile(title: Text('我是一个列表')),
        Divider(),
        ListTile(title: Text('我是一个列表')),
        Divider(),
        ListTile(title: Text('我是一个列表')),
        Divider(),
        ListTile(title: Text('我是一个列表')),
        Divider(),
      ],
    );
  }
}
