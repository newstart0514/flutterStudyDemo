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

// 父widget
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey _globalKey1 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // 1.获取以及修改currentState 子widget的属性
            var boxState = _globalKey1.currentState as _BoxState;
            print(boxState._count);
            setState(() {
              boxState._count++;
            });
            // 调用currentState 子widget的方法
            boxState.run();
            // 2.获取子widget
            var boxWidget = _globalKey1.currentWidget as Box;
            print(boxWidget.color);
            // 3.获取子组件的渲染属性（了解）
            var renderBox =
                _globalKey1.currentContext!.findRenderObject() as RenderBox;
            print(renderBox.size);
          },
          child: const Icon(Icons.add)),
      appBar: AppBar(
        title: const Text('标题'),
      ),
      body: Center(
          // 适配横屏以及竖屏
          child: Box(key: _globalKey1, color: Colors.red)),
    );
  }
}

// 子widget
class Box extends StatefulWidget {
  final Color color;
  const Box({Key? key, required this.color}) : super(key: key);

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int _count = 0;

  void run() {
    print('我是box的run方法');
  }

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
