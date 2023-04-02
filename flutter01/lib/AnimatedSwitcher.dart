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
        body: Center(
          child: Container(
              alignment: Alignment.center,
              width: 300,
              height: 220,
              color: Colors.lightBlueAccent,
              child: AnimatedSwitcher(
                // 当子元素改变的时候会触发动画
                duration: const Duration(milliseconds: 1500),
                child: flag
                    ? const CircularProgressIndicator()
                    : Image.network(
                        'https://www.itying.com/images/flutter/2.png',
                        fit: BoxFit.cover,
                      ),
              )),
        ));
  }
}
