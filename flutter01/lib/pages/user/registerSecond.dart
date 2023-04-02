import 'package:flutter/material.dart';

class LoginSecond extends StatefulWidget {
  const LoginSecond({super.key});

  @override
  State<LoginSecond> createState() => _LoginSecondState();
}

class _LoginSecondState extends State<LoginSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('注册第二步')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('注册第二步'),
          const SizedBox(height: 40),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/registerThird');
              },
              child: const Text('下一步'))
        ],
      )),
    );
  }
}
