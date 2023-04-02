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
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Row(
          children: [Text('热搜', style: Theme.of(context).textTheme.titleLarge)],
        ),
        const Divider(),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            Button('女装', onPressed: () {}),
            Button('男装', onPressed: () {}),
            Button('玩具', onPressed: () {}),
            Button('文学', onPressed: () {}),
            Button('时尚', onPressed: () {}),
            Button('文艺', onPressed: () {}),
            Button('小清新', onPressed: () {}),
            Button('可爱', onPressed: () {})
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text('历史记录', style: Theme.of(context).textTheme.titleLarge)
          ],
        ),
        const Divider(),
        Column(
          children: const [
            ListTile(title: Text('女装')),
            Divider(),
            ListTile(title: Text('男装')),
            Divider(),
            ListTile(title: Text('电脑')),
            Divider()
          ],
        ),
        const SizedBox(height: 40),
        Row(
          children: [
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.delete),
              label: const Text('清空历史记录'),
            )
          ],
        )
      ],
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
            backgroundColor: MaterialStateProperty.all(Colors.white54),
            foregroundColor: MaterialStateProperty.all(Colors.black45)),
        onPressed: onPressed,
        child: Text(text));
  }
}
