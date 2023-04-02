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
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Wrap(
        spacing: 10, // 水平间距
        runSpacing: 10, // 垂直间距
        direction: Axis.horizontal, // 排列顺序
        children: [
          Button('第一集', onPressed: () {}),
          Button('第二集', onPressed: () {}),
          Button('第三集', onPressed: () {}),
          Button('第四集', onPressed: () {}),
          Button('第五集', onPressed: () {}),
          Button('第六集', onPressed: () {}),
          Button('第七集', onPressed: () {}),
          Button('第八集', onPressed: () {}),
          Button('第九集', onPressed: () {}),
          Button('第十集', onPressed: () {}),
          Button('第十一集', onPressed: () {}),
          Button('第十二集', onPressed: () {}),
          Button('第十三集', onPressed: () {}),
          Button('第十四集', onPressed: () {}),
          Button('第十五集', onPressed: () {}),
          Button('第十六集', onPressed: () {}),
          Button('第十七集', onPressed: () {}),
          Button('第十八集', onPressed: () {}),
          Button('第十九集', onPressed: () {}),
        ],
      ),
    );
  }
}

// 自定义的button组件
class Button extends StatelessWidget {
  String text; // 按钮文本
  void Function()? onPressed; // 按钮点击的回调事件
  Button(this.text, {Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey),
            foregroundColor: MaterialStateProperty.all(Colors.black45)),
        onPressed: onPressed,
        child: Text(text));
  }
}
