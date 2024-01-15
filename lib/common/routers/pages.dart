import 'package:get/get.dart';
import 'package:personal/common/pages/jump/jump_one/view.dart';
import 'package:personal/common/pages/jump/jump_two/view.dart';
import 'package:personal/common/pages/layout/view.dart';
import 'package:personal/common/pages/list_view/view.dart';
import 'package:personal/common/pages/test/index.dart';
import './names.dart';

import '../pages/counter_get/view.dart';

class RoutePages {
  // 列表
  // static List<GetPage> list = [];

  static final routes = [
    GetPage(name: RouteNames.counterPage, page: () => CounterGetPage()),
    GetPage(name: RouteNames.jumeOnePage, page: () => JumpOnePage()),
    GetPage(name: RouteNames.jumeTwoPage, page: () => JumpTwoPage()),
    GetPage(name: RouteNames.testPage, page: () => const TestPage()),
    GetPage(name: RouteNames.listView, page: () => ListViewPage()),
    GetPage(name: RouteNames.layoutPage, page: () => const LayoutPage()),
  ];
}
