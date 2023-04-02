import 'package:flutter/material.dart';

class MyDialog extends Dialog {
  final String title;
  final String content;
  final Function()? onTap;
  const MyDialog(
      {super.key,
      required this.title,
      required this.content,
      required this.onTap});
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency, // 设置背景透明
      child: Center(
        child: Container(
          height: 240,
          width: 240,
          color: Colors.white,
          child: Column(children: [
            Padding(
                padding: const EdgeInsets.all(5),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        title,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: onTap,
                        child: const Icon(Icons.close),
                      ),
                    )
                  ],
                )),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: Text(
                content,
                style: const TextStyle(fontSize: 14),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
