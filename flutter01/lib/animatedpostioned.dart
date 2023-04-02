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
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                flag = !flag;
              });
            },
            child: const Icon(Icons.edit)),
        appBar: AppBar(
          title: const Text('标题'),
        ),
        body: Stack(
          children: [
            AnimatedPositioned(
                duration: const Duration(seconds: 2, milliseconds: 500),
                top: flag ? 10 : 650,
                right: flag ? 10 : 300,
                curve: Curves.bounceInOut,
                child: Container(
                  width: 60,
                  height: 60,
                  color: Colors.blue,
                )),
            ListView(
              children: const [
                ListTile(
                  title: Text('我是一个列表'),
                ),
                ListTile(
                  title: Text('我是一个列表'),
                ),
                ListTile(
                  title: Text('我是一个列表'),
                ),
                ListTile(
                  title: Text('我是一个列表'),
                ),
              ],
            )
          ],
        ));
  }
}
