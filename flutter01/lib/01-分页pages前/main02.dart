import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('你好FLUTTER')),
      body: Column(children: const [MyApp(), MyButton()]),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
      alignment: Alignment.center,
      height: 200.0,
      width: 200.0,
      // transform: Matrix4.translationValues(-40, 30, 0),
      transform: Matrix4.rotationZ(0.2),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(244, 244, 123, 2),
          border: Border.all(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 10.0)],
          gradient: const LinearGradient(colors: [Colors.red, Colors.yellow])),
      child: const Text(
        '你好！flutter',
        style: TextStyle(color: Colors.black, fontSize: 40.0),
      ),
    ));
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 40,
      // margin: const EdgeInsets.all(10),
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      decoration: BoxDecoration(
          color: Colors.blueAccent, borderRadius: BorderRadius.circular(30)),
      child: const Text('按钮',
          style: TextStyle(color: Colors.white, fontSize: 20.0)),
    );
  }
}
