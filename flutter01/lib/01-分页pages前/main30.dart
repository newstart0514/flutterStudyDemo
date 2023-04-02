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
      title: 'flutter APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

// 有状态组件
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _numCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('flutter app')),
      body: Center(
        child: Column(children: [
          Text('$_numCount', style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _numCount++;
                });
              },
              child: const Text('增加'))
        ]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _numCount++;
            });
          },
          child: const Icon(Icons.add)),
    );
  }
}
