import 'package:flutter/material.dart';

// 其他页面跳转到from页面传值
class FromPage extends StatefulWidget {
  final Map arguments;
  const FromPage({super.key, required this.arguments});

  @override
  State<FromPage> createState() => _FromPageState();
}

class _FromPageState extends State<FromPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.arguments);
  }

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
