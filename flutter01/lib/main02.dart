import 'package:flutter/material.dart';
import './pages/tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // 去掉debug条
        title: 'flutter APP',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  // 生命周期函数，组件初始化后就会触发
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  List<String> list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          // 左侧的按钮图标
          icon: const Icon(Icons.menu),
          onPressed: () {
            print('左侧的按钮图标');
          },
        ),
        backgroundColor: Colors.red,
        actions: [
          // 右侧的按钮图标
          IconButton(
              onPressed: () {
                print('搜索图标');
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                print('函数图标');
              },
              icon: const Icon(Icons.functions)),
        ],
        title: const Text('Flutter App'),
        bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 2,
            indicatorPadding: const EdgeInsets.all(5),
            // indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
                color: Colors.yellow, borderRadius: BorderRadius.circular(20)),
            labelColor: Colors.purple,
            unselectedLabelColor: Colors.orange,
            controller: _tabController,
            tabs: const [
              Tab(
                child: Text('关注'),
              ),
              Tab(
                child: Text('热门'),
              ),
              Tab(
                child: Text('视频'),
              ),
            ]),
      ),
      body: TabBarView(controller: _tabController, children: [
        ListView(
          children: const [
            ListTile(
              title: Text('我是关注列表'),
            )
          ],
        ),
        ListView(
          children: const [
            ListTile(
              title: Text('我是热门列表'),
            )
          ],
        ),
        ListView(
          children: const [
            ListTile(
              title: Text('我是视频列表'),
            )
          ],
        )
      ]),
    );
  }
}
