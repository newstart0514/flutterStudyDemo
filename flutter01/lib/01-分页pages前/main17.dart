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
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.black,
        ),
        Row(
          children: [
            Expanded(
                flex: 2,
                child: SizedBox(
                    height: 180,
                    width: double.infinity,
                    child: Image.network(
                        'https://www.itying.com/images/flutter/1.png',
                        fit: BoxFit.cover))),
            Expanded(
                flex: 1,
                child: SizedBox(
                  height: 180,
                  child: Column(children: [
                    Expanded(
                        flex: 1,
                        child: Image.network(
                            'https://www.itying.com/images/flutter/2.png',
                            fit: BoxFit.cover)),
                    const SizedBox(height: 5),
                    Expanded(
                      flex: 1,
                      child: Image.network(
                          'https://www.itying.com/images/flutter/3.png',
                          fit: BoxFit.cover),
                    ),
                  ]),
                ))
          ],
        )
      ],
    );
  }
}
