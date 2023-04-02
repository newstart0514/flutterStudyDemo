// import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../pages/tabs.dart';
import '../pages/search.dart';
import '../pages/news.dart';
import '../pages/form.dart';
import '../pages/user/login.dart';
import '../pages/user/registerFirst.dart';
import '../pages/user/registerSecond.dart';
import '../pages/user/registerThird.dart';
import '../pages/dialog.dart';
// import '../pages/pageView.dart';
import '../pages/pageViewBuilder.dart';
import '../pages/pageViewFullPage.dart';
import '../pages/pageViewSwiper.dart';
import '../pages/pageViewKeepAlive.dart';
import '../pages/hero.dart';

// 定义路由
Map routers = {
  '/': (context) => const Tabs(),
  '/news': (context) => const NewsPage(),
  '/search': (context) => const SearchPage(),
  '/from': (context, {arguments}) => FromPage(arguments: arguments),
  '/login': (context) => const LoginPage(),
  '/registerFirst': (context) => const RegisterFirst(),
  '/registerSecond': (context) => const LoginSecond(),
  '/registerThird': (context) => const LoginThird(),
  '/dialog': (context) => const DialogPage(),
  // '/pageView': (context) => const PageViewPage(),
  '/pageViewBuilder': (context) => const PageViewBuilder(),
  '/PageViewFullPage': (context) => const PageViewFullPage(),
  '/pageViewSwiper': (context) => const PageViewSwiper(),
  '/pageViewAlive': (context) => const PageViewPage(),
  '/hero': (context, {arguments}) => HeroPage(arguments: arguments)
};

// 配置路由
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String? name = settings.name;
  final Function? pageContentBuilder = routers[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = CupertinoPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          CupertinoPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};
