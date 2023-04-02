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
      body: AnimatedPadding(
        duration: const Duration(milliseconds: 2000),
        curve: Curves.bounceInOut,
        padding: EdgeInsets.fromLTRB(10, flag ? 10 : 500, 0, 0),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.redAccent,
        ),
      ),
    );
  }
}
