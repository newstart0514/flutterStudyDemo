import 'package:flutter/material.dart';
import './myFont.dart';

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
  const myHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 20),
        Icon(Icons.home, size: 40, color: Colors.red),
        SizedBox(height: 20),
        Icon(MyFont.book, size: 40, color: Colors.yellow),
        SizedBox(height: 20),
        Icon(MyFont.weChat, size: 40, color: Colors.green),
        SizedBox(height: 20),
        Icon(MyFont.cart, size: 40, color: Colors.blue),
      ],
    );
  }
}
