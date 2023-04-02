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
  List<Widget> list = [];
  final GlobalKey _globalKey1 = GlobalKey();
  final GlobalKey _globalKey2 = GlobalKey();
  final GlobalKey _globalKey3 = GlobalKey();

  @override
  void initState() {
    super.initState();
    // 注意：常量没法改变
    // key:可以保存状态
    list = [
      Box(key: _globalKey1, color: Colors.red),
      Box(key: _globalKey2, color: Colors.blue),
      Box(key: _globalKey3, color: Colors.yellow),
    ];
  }

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
          // 适配横屏以及竖屏
          child: MediaQuery.of(context).orientation == Orientation.portrait
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: list,
                )
              : Row(
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
