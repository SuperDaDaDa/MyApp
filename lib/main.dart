import 'package:fish_redux/fish_redux.dart';
import 'file:///F:/sjd/myapp/lib/page/main/main_page.dart';
import 'package:flutter_my_app/page/cubit/counter_page.dart';

///需要使用hide隐藏Page
import 'package:flutter/cupertino.dart' hide Page;
import 'package:flutter/material.dart' hide Page;
import 'package:flutter_my_app/page/fishredux/comp/page.dart';
import 'package:flutter_my_app/page/fishredux/counter/page.dart';
import 'package:flutter_my_app/page/fishredux/first/page.dart';
import 'package:flutter_my_app/page/fishredux/guide/page.dart';
import 'package:flutter_my_app/page/fishredux/list/page.dart';
import 'package:flutter_my_app/page/fishredux/list_edit/page.dart';
import 'package:flutter_my_app/page/fishredux/multiList/page.dart';
import 'package:flutter_my_app/page/fishredux/second/page.dart';
import 'package:flutter_my_app/page/fishredux/store/state.dart';
import 'package:flutter_my_app/page/fishredux/store/store.dart';

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
  // final AbstractRoutes routes = PageRoutes(
  //   pages: <String, Page<Object, dynamic>>{
  //     "CountPage": CountPage(),
  //     ///页面传值跳转模块演示
  //     "FirstPage": FirstPage(),
  //     "SecondPage": SecondPage(),
  //
  //     ///导航页面
  //     "GuidePage": GuidePage(),
  //     ///列表模块演示
  //     "ListPage": ListPage(),
  //   },
  // );

  // _updateState() {
  //   return (Object pageState, GlobalState appState) {
  //     final GlobalBaseState p = pageState;
  //     if (pageState is Cloneable) {
  //       final Object copy = pageState.clone();
  //       final GlobalBaseState newState = copy;
  //       if (p.themeColor != appState.themeColor) {
  //         newState.themeColor = appState.themeColor;
  //       }
  //       return newState;
  //     }
  //     return pageState;
  //   };
  // }

  // final AbstractRoutes routes = PageRoutes(
  //     pages: <String, Page<Object, dynamic>>{
  //       ///将你的路由名称和页面映射在一起，比如：RouteConfig.homePage : HomePage(),
  //       RouteConfig.guidePage: GuidePage(),
  //       RouteConfig.countPage: CountPage(),
  //       RouteConfig.firstPage: FirstPage(),
  //       RouteConfig.secondPage: SecondPage(),
  //       RouteConfig.listPage: ListPage(),
  //       RouteConfig.listEditPage: ListEditPage(),
  //       RouteConfig.listMultiPage: MultiListPage(),
  //       // RouteConfig.componentPage: CompPage(),
  //     },
  //     ///全局状态管理:只有特定的范围的Page(State继承了全局状态),才需要建立和 AppStore 的连接关系
  //     visitor:(String path,Page<Object,dynamic> page){
  //       if(page.isTypeof<GlobalBaseState>()){
  //         page.connectExtraStore<GlobalState>(GlobalStore.store, _updateState());
  //       }
  //     }
  // );

  return MaterialApp(
    title: 'FishDemo',
    home: RouteConfig.routes.buildPage(RouteConfig.guidePage, null), //作为默认页面
    onGenerateRoute: (RouteSettings settings) {
      //ios页面切换风格
      return CupertinoPageRoute(builder: (BuildContext context) {
        return RouteConfig.routes.buildPage(settings.name, settings.arguments);
      });
//      Material页面切换风格
//      return MaterialPageRoute<Object>(builder: (BuildContext context) {
//        return routes.buildPage(settings.name, settings.arguments);
//      });
    },
  );
}

///路由管理
class RouteConfig {
  ///定义你的路由名称比如   static final String routeHome = 'page/home';
  ///导航页面
  static const String guidePage = 'page/guide';

  ///计数器页面
  static const String countPage = 'page/count';

  ///页面传值跳转模块演示
  static const String firstPage = 'page/first';
  static const String secondPage = 'page/second';

  ///列表模块演示
  static const String listPage = 'page/list';
  static const String listEditPage = 'page/listEdit';
  static const String listMultiPage = 'page/listMulti';

  ///Component
  static const String componentPage = 'page/component';

  static final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      ///将你的路由名称和页面映射在一起，比如：RouteConfig.homePage : HomePage(),
      RouteConfig.guidePage: GuidePage(),
      RouteConfig.countPage: CountPage(),
      RouteConfig.firstPage: FirstPage(),
      RouteConfig.secondPage: SecondPage(),
      RouteConfig.listPage: ListPage(),
      RouteConfig.listEditPage: ListEditPage(),
      RouteConfig.listMultiPage: MultiListPage(),
      RouteConfig.componentPage: CompCasePage(),
    },
    visitor: StoreConfig.visitor,
  );
}

class StoreConfig {
  //全局状态管理
  static _updateState() {
    return (Object pageState, GlobalState appState) {
      final GlobalBaseState p = pageState;
      if (pageState is Cloneable) {
        final Object copy = pageState.clone();
        final GlobalBaseState newState = copy;

        if (p.store == null) {
          newState.store = appState.store;
        } else {
          /// 这地方增加字段判断，是否需要更新
          if ((p.store.themeColor != appState.store.themeColor)) {
            newState.store.themeColor = appState.store.themeColor;
          }

          /// 如果增加字段，同理上面的判断然后赋值...
        }
        return newState;
      }
      return pageState;
    };
  }

  static visitor(String path, Page<Object, dynamic> page) {
    if (page.isTypeof<GlobalBaseState>()) {
      //建立AppStore驱动PageStore的单向数据连接
      ///参数1 AppStore  参数2 当AppStore.state变化时,PageStore.state该如何变化
      page.connectExtraStore<GlobalState>(GlobalStore.store, _updateState());
    }
  }
}
