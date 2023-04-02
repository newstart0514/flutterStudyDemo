import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../widget/myDialog.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({super.key});

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  void _alertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('提示信息'),
            content: const Text('确定是否要删除'),
            actions: [
              TextButton(
                  onPressed: () {
                    print('ok');
                    Navigator.of(context).pop();
                  },
                  child: const Text('确定')),
              TextButton(
                  onPressed: () {
                    print('取消');
                    Navigator.of(context).pop();
                  },
                  child: const Text('取消')),
            ],
          );
        });
    print(result);
  }

  void _simpleDialog() async {
    var reslult = await showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text('请选择语言'),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  print('汉语');
                  Navigator.pop(context, '汉语');
                },
                child: const Text('汉语'),
              ),
              const Dialog(),
              SimpleDialogOption(
                onPressed: () {
                  print('英语');
                  Navigator.pop(context, '英语');
                },
                child: const Text('英语'),
              ),
              const Dialog(),
              SimpleDialogOption(
                onPressed: () {
                  print('日语');
                  Navigator.pop(context, '日语');
                },
                child: const Text('日语'),
              ),
              const Dialog(),
            ],
          );
        });
    print(reslult);
  }

  void _modelBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return SizedBox(
            height: 240,
            child: Column(children: [
              ListTile(
                title: const Text('分享'),
                onTap: () {
                  print('分享');
                  Navigator.of(context).pop('分享');
                },
              ),
              const Divider(),
              ListTile(
                title: const Text('收藏'),
                onTap: () {
                  print('收藏');
                  Navigator.of(context).pop('收藏');
                },
              ),
              const Divider(),
              ListTile(
                title: const Text('关注'),
                onTap: () {
                  print('关注');
                  Navigator.of(context).pop('关注');
                },
              ),
              const Divider(),
            ]),
          );
        });
    print(result);
  }

  void _toast() {
    Fluttertoast.showToast(
        msg: '这是一个弹出框',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blueAccent,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void _myDialog() async {
    var result = await showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return MyDialog(
            title: '标题',
            content: '提示信息',
            onTap: () {
              print('关闭了');
              Navigator.of(context).pop('我是自定义的Dialog');
            },
          );
        });
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: _alertDialog, child: const Text('弹出框演示1')),
            ElevatedButton(
                onPressed: _simpleDialog, child: const Text('弹出框演示2')),
            ElevatedButton(
                onPressed: _modelBottomSheet, child: const Text('弹出框演示3')),
            ElevatedButton(onPressed: _toast, child: const Text('弹出框演示4')),
            ElevatedButton(onPressed: _myDialog, child: const Text('弹出框演示5')),
          ],
        ),
      ),
    );
  }
}
