import 'package:flutter/material.dart';

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
  const myHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 页面上显示一个容器，高度是宽度的一半
    return ListView(
      children: [
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 20,
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.network(
                      'https://www.itying.com/images/flutter/1.png',
                      fit: BoxFit.cover,
                    )),
                ListTile(
                  leading: ClipOval(
                    child: Image.network(
                        'https://www.itying.com/images/flutter/1.png',
                        fit: BoxFit.cover,
                        width: 40,
                        height: 40),
                  ),
                  title: Text('xxxx'),
                  subtitle: Text('xxxxxxxxxxx'),
                )
              ],
            )),
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 20,
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.network(
                      'https://www.itying.com/images/flutter/2.png',
                      fit: BoxFit.cover,
                    )),
                const ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.itying.com/images/flutter/2.png')),
                  title: Text('xxxx'),
                  subtitle: Text('xxxxxxxxxxx'),
                )
              ],
            ))
      ],
    );
  }
}
