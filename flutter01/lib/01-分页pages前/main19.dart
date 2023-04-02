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
    return Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: Stack(
        children: [
          Positioned(
              // 相对于外部容器进行定位，如果没有外部容器则对整个屏幕进行定位
              left: 0,
              bottom: 0,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              )),
          const Positioned(right: 0, bottom: 0, child: Text('你好flutter'))
        ],
      ),
    );
  }
}
