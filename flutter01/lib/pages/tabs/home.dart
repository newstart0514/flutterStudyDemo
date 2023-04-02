import 'package:flutter/material.dart';
import '../../res/listData.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _getListData() {
    var tempList = listData.map((value) {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/hero', arguments: {
            "imageUrl": value['imageUrl'],
            'InitialPage': value['id'] - 1,
            'listData': listData
          });
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromRGBO(233, 233, 233, 0.9), width: 1)),
          child: Column(children: <Widget>[
            Hero(
                tag: value['imageUrl'],
                child: Image.network(value['imageUrl'])),
            const SizedBox(height: 10),
            Text(
              value['title'],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            )
          ]),
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // 一行的widget数量
      crossAxisSpacing: 10.0, // 水平子widget之间的间距
      mainAxisSpacing: 10.0, // 垂直子widget之间的间距
      padding: const EdgeInsets.all(10),
      // childAspectRatio: 0.7,   // 宽度和高度的比例
      children: _getListData(),
    );
  }
}
