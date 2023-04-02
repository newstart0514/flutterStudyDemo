import 'package:flutter/material.dart';
import 'package:flutter01/tools/KeepAliveWrapper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
    // 监听_tabController的改变事件
    _tabController.addListener(() {
      // 防止侦听两次
      if (_tabController.animation!.value == _tabController.index) {
        print(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    // 销毁_tabController
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        // 可以配置appBard
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          elevation: 0.5,
          backgroundColor: Colors.white,
          title: SizedBox(
            height: 30,
            child: TabBar(
                labelStyle: const TextStyle(
                  fontSize: 14,
                ),
                isScrollable: true,
                indicatorColor: Colors.red,
                labelColor: Colors.red,
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                controller: _tabController,
                tabs: const [
                  Tab(child: Text('关注')),
                  Tab(child: Text('热门')),
                  Tab(child: Text('视频')),
                  Tab(child: Text('军事')),
                  Tab(child: Text('娱乐')),
                  Tab(child: Text('校园')),
                  Tab(child: Text('爱情')),
                  Tab(child: Text('书籍')),
                ]),
          ),
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        KeepAliveWrapper(
            // 自定义缓存组件
            child: ListView(
          children: const [
            ListTile(title: Text('我是关注列表1')),
            ListTile(title: Text('我是关注列表2')),
            ListTile(title: Text('我是关注列表3')),
            ListTile(title: Text('我是关注列表4')),
            ListTile(title: Text('我是关注列表5')),
            ListTile(title: Text('我是关注列表6')),
            ListTile(title: Text('我是关注列表7')),
            ListTile(title: Text('我是关注列表8')),
            ListTile(title: Text('我是关注列表9')),
            ListTile(title: Text('我是关注列表10')),
            ListTile(title: Text('我是关注列表11')),
            ListTile(title: Text('我是关注列表12')),
            ListTile(title: Text('我是关注列表13')),
            ListTile(title: Text('我是关注列表14')),
            ListTile(title: Text('我是关注列表15')),
            ListTile(title: Text('我是关注列表16')),
            ListTile(title: Text('我是关注列表17')),
          ],
        )),
        const Text('我是热门'),
        const Text('我是视频'),
        const Text('我是军事'),
        const Text('我是娱乐'),
        const Text('我是校园'),
        const Text('我是爱情'),
        const Text('我是书籍'),
      ]),
    );
  }
}
