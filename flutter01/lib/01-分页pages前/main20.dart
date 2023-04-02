import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: const [
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
            ListTile(title: Text('我是一个列表1')),
          ],
        ),
        Positioned(
            left: 0,
            top: 0,
            width: 400,
            height: 44,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      height: 44,
                      color: Colors.red,
                      child: const Text(
                        '二级导航',
                        style: TextStyle(color: Colors.amber),
                      ),
                    ))
              ],
            ))
      ],
    );
  }
}
