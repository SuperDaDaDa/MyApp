import 'package:fish_redux/fish_redux.dart';
import 'file:///F:/sjd/myapp/lib/page/main/main_page.dart';
import 'package:flutter_my_app/page/cubit/counter_page.dart';
///需要使用hide隐藏Page
import 'package:flutter/cupertino.dart'hide Page;
import 'package:flutter/material.dart' hide Page;
import 'package:flutter_my_app/page/fishredux/counter/page.dart';
import 'package:flutter_my_app/page/fishredux/first/page.dart';
import 'package:flutter_my_app/page/fishredux/second/page.dart';


void main() {
  runApp(createApp());
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: HomePage(),
//     );
//   }
// }

Widget createApp() {
  ///定义路由
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      "CountPage": CountPage(),
      ///页面传值跳转模块演示
      "FirstPage": FirstPage(),
      "SecondPage": SecondPage(),
    },
  );

  return MaterialApp(
    title: 'FishDemo',
    home: routes.buildPage("CountPage", null), //作为默认页面
    onGenerateRoute: (RouteSettings settings) {
      //ios页面切换风格
      return CupertinoPageRoute(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
//      Material页面切换风格
//      return MaterialPageRoute<Object>(builder: (BuildContext context) {
//        return routes.buildPage(settings.name, settings.arguments);
//      });
    },
  );
}