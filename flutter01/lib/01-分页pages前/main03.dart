import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(title: const Text('你好FLUTTER')),
        body: Column(
          children: const [
            MyApp(),
            SizedBox(height: 20),
            circular(),
            SizedBox(height: 20),
            ClipImage(),
            SizedBox(width: 20),
            loaclImages()
          ],
        )),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 150,
      width: 150,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: const BoxDecoration(color: Colors.yellow),
      child: Image.network(
        // 'https://itying.com/images/201906/goods_img/1120_P_1560842352183.png'
        'https://www.itying.com/themes/itying/images/ionic4.png',
        // scale: 2,
        // alignment: Alignment.centerLeft,
        // fit: BoxFit.cover,
        // repeat: ImageRepeat.repeatX,
      ),
    ));
  }
}

// 实现一个圆形图片
class circular extends StatelessWidget {
  const circular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.yellowAccent,
          borderRadius: BorderRadius.circular(75),
          image: const DecorationImage(
              image: NetworkImage(
                  'https://itying.com/images/201906/goods_img/1120_P_1560842352183.png'),
              fit: BoxFit.cover)),
    );
  }
}

// 实现一个圆形图片  使用clipoval
class ClipImage extends StatelessWidget {
  const ClipImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        'https://itying.com/images/201906/goods_img/1120_P_1560842352183.png',
        width: 150,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}

// 加载本地图片
// ignore: camel_case_types
class loaclImages extends StatelessWidget {
  const loaclImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Image.asset("images/a.jpeg"),
    );
  }
}
