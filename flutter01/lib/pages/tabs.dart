import 'package:flutter/material.dart';
import 'package:flutter01/pages/tabs/message.dart';
import './tabs/home.dart';
import './tabs/category.dart';
import './tabs/setting.dart';
import './tabs/user.dart';

class Tabs extends StatefulWidget {
  final int index;
  const Tabs({super.key, this.index = 0});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentIndex = widget.index;
  }

  final List<Widget> _pages = const [
    HomePage(),
    CategoryPage(),
    MessagePage(),
    SettingPage(),
    UserPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Flutter App'),
          backgroundColor: Colors.red,
          elevation: 1),
      drawer: Drawer(
        child: Column(children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: UserAccountsDrawerHeader(
                  accountName: const Text('云云'),
                  accountEmail: const Text('5201314@bg.com'),
                  currentAccountPicture: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.itying.com/images/flutter/3.png'),
                  ),
                  otherAccountsPictures: [
                    Image.network(
                        'https://www.itying.com/images/flutter/4.png'),
                    Image.network(
                        'https://www.itying.com/images/flutter/5.png'),
                    Image.network(
                        'https://www.itying.com/images/flutter/6.png'),
                  ],
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://www.itying.com/images/flutter/2.png'))),
                ),
              )
            ],
          ),
          const ListTile(
              leading: CircleAvatar(child: Icon(Icons.people)),
              title: Text('个人中心')),
          const ListTile(
              leading: CircleAvatar(child: Icon(Icons.settings)),
              title: Text('系统设置')),
          const ListTile(
              leading: CircleAvatar(child: Icon(Icons.message)),
              title: Text('消息')),
        ]),
      ),
      endDrawer: const Drawer(
        child: Text('右侧的侧边栏'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          fixedColor: Colors.red, // 选中的颜色
          type: BottomNavigationBarType.fixed, // 如果底部有三个以上的菜单选项则需要配置该选项
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
            BottomNavigationBarItem(
                icon: Icon(Icons.apps_outlined), label: '分类'),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: '消息'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: '用户'),
          ]),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        padding: const EdgeInsets.all(3),
        margin: const EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: FloatingActionButton(
          backgroundColor: _currentIndex == 2 ? Colors.red : Colors.blue,
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              _currentIndex = 2;
            });
          },
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, // 配置浮动按钮的位置
    );
  }
}
