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
  const myHomePage({super.key});

  // List<Widget> _initListData() {
  //   List<Widget> tempList = [];

  //   for (var i = 0; i < listData.length; i++) {
  //     tempList.add(ListTile(
  //       leading: Image.network('${listData[i]['imageUrl']}'),
  //       title: Text('${listData[i]['title']}'),
  //       subtitle: Text('${listData[i]['author']}'),
  //     ));
  //   }
  //   return tempList;
  // }

  List<Widget> _initListData() {
    var tempList = listData.map((value) {
      return ListTile(
        leading: Image.network('${value['imageUrl']}'),
        title: Text('${value['title']}'),
        subtitle: Text('${value['author']}'),
      );
    });

    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: _initListData());
  }
}
