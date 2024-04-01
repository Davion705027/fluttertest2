import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:personal/common/routers/index.dart';
import 'dart:convert';

import 'package:personal/common/routers/pages.dart';
import 'package:personal/test/calendar.dart';
import 'package:personal/test/coldmiss.dart';
import 'package:personal/test/func.dart';
import 'package:personal/test/mqtt-dj.dart';
import 'package:personal/test/mqtt.dart';

void main() {
  // var res = calendar['solar2lunar'](2023,11,24);
  // print(res);
  // var d = DateTime.now();
  // print(d);
  // var codeArr = [1,2,3,4,5];
  // var num;

  // var entry = codeArr.asMap().entries.firstWhere((entry) {
  //   var i = entry.key;
  //   var v = entry.value;
  //   return codeArr.lastIndexOf(v) != i;
  // }, orElse: () => null);

  // var num = entry?.value;
  // print(num);
  // var res1 = codeArr.asMap().keys.firstWhere((v){
  //   print(v);
  //   return true;
  // });
  // var res = codeArr.asMap().entries.firstWhere((v){
  //   print(v);
  //   return v.value == 3;
  // });
  // print(res.value);

  // var arr = [
  //   [for (var i = 0; i < 6; i++) codeArr.contains(i + 1)],
  // ];
  // var arr = [4,1,2,3];
  // var list = arr.where((v)=>v>2).toList();
  // print(arr);

  // Map myMap = {
  //   'one': 1,
  //   'two': 2,
  //   'three': {
  //     'd': 5,
  //     'd1': {
  //       'e':3,
  //     }
  //   },
  // };

  // List flatternObj(Map map) {
  //   List values = [];

  //   map.forEach((key, value) {
  //     if (value is Map) {
  //       // 递归处理嵌套的 Map
  //       values.addAll(flatternObj(value));
  //     }else{
  //       values.add(value);
  //     }
  //   });

  //   return values;
  // }

  // var res = flattenObj(myMap.entries.toList());
  // print(myMap);  // Output: [1, 2, 3]

  // List<dynamic> flattenObj(dynamic n) {
  //   if (n is Map || n is List) {
  //     return n.expand<dynamic>((element) => flattenObj(element)).toList();
  //   } else {
  //     return [n];
  //   }
  // }

  // List nestedList = [[1, 2,[7,8]], [3, 4], [5, 6]];
  // List flattenedList = flattenObj(nestedList);
  // print(flattenedList); // Output: [1, 2, 3, 4, 5, 6]

  // // 创建一个带有扩展功能的函数
  // originalFunction(int a, int b) => a + b;
  // var extendedFunction = ExtendedFunction(originalFunction);

  // // 设置自定义属性
  // extendedFunction['after'] = (List arr) {
  //   return arr.map((v) => v * 2).toList();
  // };

  // // 获取自定义属性
  // var afterFunction = extendedFunction['after'];
  // if (afterFunction != null && afterFunction is Function) {
  //   var result = afterFunction([1, 2, 3]);
  //   print(result); // 输出 [2, 4, 6]
  // }

  // // 调用原始函数
  // var result = extendedFunction(3, 4);
  // print(result); // 输出 7

  // AppMqttDJ.instance().connect();
  // AppMqtt.instance().connect();

  // final history_json = jsonDecode(history);
  // print(history_json);

  // coldmissCalculator('standard',292,);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      getPages: RoutePages.routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class RouteModel {
  final String name;
  final String path;

  RouteModel({required this.name, required this.path});
}

class _MyHomePageState extends State<MyHomePage> {
  List<RouteModel> routes = [
    RouteModel(name: '计数器', path: RouteNames.counterPage),
    RouteModel(name: '跨页面交互', path: RouteNames.jumeOnePage),
  RouteModel(name: 'test', path: RouteNames.testPage),
    RouteModel(name: 'listview', path: RouteNames.listView),
    RouteModel(name: 'layout', path: RouteNames.layoutPage)
  ];
  late List<Widget> wlist = routes
      .map((item) => ElevatedButton(
          onPressed: () {
            Get.toNamed(item.path);
          },
          child: Text(item.name)))
      .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.green[50],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // 主轴
              crossAxisAlignment: CrossAxisAlignment.start, // 交叉轴
              children: [
                Menus(wlist: wlist),
                
              ]),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

class Menus extends StatelessWidget {
  const Menus({
    super.key,
    required this.wlist,
  });

  final List<Widget> wlist;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        // mainAxisAlignment: MainAxisAlignment.center,
        spacing: 18, // 水平方向间距
        runSpacing: 20, // 垂直方向间距
        children: wlist,
      ),
    );
  }
}


