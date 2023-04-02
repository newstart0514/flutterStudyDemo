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
    // 页面上显示一个容器，高度是宽度的一半
    return ListView(
      children: [
        Card(
          child: Column(children: const [
            ListTile(
              title: Text('张三', style: TextStyle(fontSize: 28)),
              subtitle: Text('高级软件工程师'),
            ),
            Divider(),
            ListTile(
              title: Text('电话：13420546819'),
            ),
            ListTile(
              title: Text('地址：广东省韶关市翁源县'),
            )
          ]),
        ),
        const SizedBox(height: 10),
        Card(
          child: Column(children: const [
            ListTile(
              title: Text('李四', style: TextStyle(fontSize: 28)),
              subtitle: Text('高级硬件工程师'),
            ),
            Divider(),
            ListTile(
              title: Text('电话：13420546819'),
            ),
            ListTile(
              title: Text('地址：广东省韶关市翁源县'),
            )
          ]),
        )
      ],
    );
  }
}
