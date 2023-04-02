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
        ListTile(leading: Icon(Icons.home), title: Text('首页')),
        Divider(),
        ListTile(
            leading: Icon(Icons.assignment, color: Colors.red),
            title: Text('全部订单')),
        Divider(),
        ListTile(
            leading: Icon(Icons.payment, color: Colors.green),
            title: Text('待付款')),
        Divider(),
        ListTile(
          leading: Icon(Icons.favorite, color: Colors.red),
          title: Text('我的收藏'),
          trailing: Icon(Icons.chevron_right_sharp),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.people, color: Colors.black54),
          title: Text('用户中心'),
          trailing: Icon(Icons.chevron_right_sharp),
        ),
        Divider(),
      ],
    );
  }
}
