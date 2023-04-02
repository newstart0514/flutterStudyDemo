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
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 120,
          decoration: const BoxDecoration(color: Colors.red),
        ),
        Container(
          width: 120,
          decoration: const BoxDecoration(color: Colors.yellow),
        ),
        Container(
          width: 120,
          decoration: const BoxDecoration(color: Colors.black),
        ),
        Container(
          width: 120,
          decoration: const BoxDecoration(color: Colors.green),
        ),
        Container(
          width: 120,
          decoration: const BoxDecoration(color: Colors.lightBlue),
        ),
        Container(
          width: 120,
          decoration: const BoxDecoration(color: Colors.lightGreen),
        ),
      ],
    );
  }
}
