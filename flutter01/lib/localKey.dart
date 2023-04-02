import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 注意：常量没法改变
  // key:可以保存状态
  List<Widget> list = [
    const Box(key: ValueKey('1'), color: Colors.red),
    Box(
        key: UniqueKey(), // 唯一值，每次运行时会随机生成
        color: Colors.blue),
    const Box(key: ObjectKey(Box(color: Colors.yellow)), color: Colors.yellow),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            list.shuffle(); // 打乱顺序
          });
        },
        child: const Icon(Icons.refresh),
      ),
      appBar: AppBar(
        title: const Text('标题'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: list,
      )),
    );
  }
}

class Box extends StatefulWidget {
  final Color color;
  const Box({Key? key, required this.color}) : super(key: key);

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.red,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(widget.color)),
          onPressed: () {
            setState(() {
              _count++;
            });
          },
          child: Text(
            '$_count',
            style: Theme.of(context).textTheme.headlineLarge,
          )),
    );
  }
}
