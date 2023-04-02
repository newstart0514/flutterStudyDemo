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

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        // 下面元素设置宽度是没有效果的
        Expanded(
            child: IconContainer(Icons.home, color: Colors.yellow), flex: 1),
        IconContainer(Icons.search)
      ],
    );
  }
}

// 自定义IconContainer
class IconContainer extends StatelessWidget {
  Color color;
  IconData iconData;
  IconContainer(this.iconData, {Key? key, this.color = Colors.red})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 120,
      width: 120,
      color: color,
      child: Icon(iconData, color: Colors.white, size: 28),
    );
  }
}
