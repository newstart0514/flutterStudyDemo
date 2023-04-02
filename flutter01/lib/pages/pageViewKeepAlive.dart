import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({super.key});

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return MyContainer(num: index);
          }),
    );
  }
}

// 自定义组件
class MyContainer extends StatefulWidget {
  final int num;
  const MyContainer({super.key, required this.num});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    print(widget.num);
    return Center(
      child: Text('第${widget.num}',
          style: Theme.of(context).textTheme.headlineLarge),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true; // true表示缓存页面
}
