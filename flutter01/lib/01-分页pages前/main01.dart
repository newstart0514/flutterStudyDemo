import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('你好FLUTTER')),
      body: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '你好Flutter,我是一个自定义组件',
        textDirection: TextDirection.ltr,
        style:
            TextStyle(color: Color.fromRGBO(244, 244, 123, 1), fontSize: 40.0),
      ),
    );
  }
}
