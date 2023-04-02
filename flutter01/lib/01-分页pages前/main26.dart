import 'package:flutter/material.dart';
import './res/listData.dart';

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

  List<Widget> _initCardData() {
    var tempList = listData.map((value) {
      return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 20,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    value['imageUrl'],
                    fit: BoxFit.cover,
                  )),
              ListTile(
                  leading: ClipOval(
                    child: Image.network(value['imageUrl'],
                        fit: BoxFit.cover, width: 40, height: 40),
                  ),
                  title: Text(value['title']),
                  subtitle: Text(value['author']))
            ],
          ));
    });

    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    // 页面上显示一个容器，高度是宽度的一半
    return ListView(
      children: _initCardData(),
    );
  }
}
