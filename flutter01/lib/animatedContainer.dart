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
          ListView(
            children: const [
              ListTile(
                title: Text('我是一个列表'),
              )
            ],
          ),
          Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: 200,
                height: double.infinity,
                transform: flag
                    ? Matrix4.translationValues(-200, 0, 0)
                    : Matrix4.translationValues(0, 0, 0),
                color: Colors.lightBlueAccent,
              ))
        ],
      ),
    );
  }
}
