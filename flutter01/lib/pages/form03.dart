import 'package:flutter/material.dart';

class FromPage extends StatefulWidget {
  const FromPage({super.key});

  @override
  State<FromPage> createState() => _FromPageState();
}

class _FromPageState extends State<FromPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('表单'),
      ),
      body: const Center(
        child: Text('我是表单页面'),
      ),
    );
  }
}
