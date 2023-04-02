import 'package:flutter/material.dart';
import '../tabs.dart';

class LoginThird extends StatefulWidget {
  const LoginThird({super.key});

  @override
  State<LoginThird> createState() => _LoginThirdState();
}

class _LoginThirdState extends State<LoginThird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('注册第三步')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('注册第三步'),
          const SizedBox(height: 40),
          ElevatedButton(
              onPressed: () {
                print('注册成功，返回用户中心');
                Navigator.of(context).pushReplacementNamed('/');
              },
              child: const Text('完成注册')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const Tabs(index: 4);
                }), (route) => false);
              },
              child: const Text('返回首页'))
        ],
      )),
    );
  }
}
