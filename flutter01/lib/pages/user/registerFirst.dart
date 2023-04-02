import 'package:flutter/material.dart';
import 'package:flutter01/routers/routers.dart';

class RegisterFirst extends StatefulWidget {
  const RegisterFirst({super.key});

  @override
  State<RegisterFirst> createState() => _RegisterFirstState();
}

class _RegisterFirstState extends State<RegisterFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('注册第一步')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('注册第一步'),
          const SizedBox(height: 40),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/registerSecond');
              },
              child: const Text('下一步'))
        ],
      )),
    );
  }
}
