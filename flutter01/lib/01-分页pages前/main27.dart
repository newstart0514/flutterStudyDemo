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
    // 页面上显示一个容器，高度是宽度的一半
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('普通按钮')),
            TextButton(onPressed: () {}, child: const Text('文本按钮')),
            OutlinedButton(onPressed: () {}, child: const Text('带边框的按钮')),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.cloud),
                label: const Text('一键上云')),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.info),
                label: const Text('消息')),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.yard),
                label: const Text('花园'))
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue), // 背景颜色
                    foregroundColor:
                        MaterialStateProperty.all(Colors.white) // 文字图标颜色
                    ),
                onPressed: () {
                  print('按钮事件');
                },
                child: const Text('普通按钮'))
          ],
        ),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 60,
            width: 200,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('大按钮'),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 60,
            width: 200,
            child: ElevatedButton.icon(
              onPressed: () {},
              label: const Text('大按钮'),
              icon: const Icon(Icons.medical_services_rounded),
            ),
          )
        ]),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: SizedBox(
                  height: 60,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.redAccent),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    label: const Text('大按钮'),
                    icon: const Icon(Icons.medical_services_rounded),
                  ),
                ))
          ],
        ),
        const SizedBox(height: 20),
        Row(children: [
          ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)))),
              onPressed: () {},
              child: const Text('圆角')),
          ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(const CircleBorder(
                      side: BorderSide(color: Colors.blue)))),
              onPressed: () {},
              child: const Text('圆形')),
        ])
      ],
    );
  }
}
