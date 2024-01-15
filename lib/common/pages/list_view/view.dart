import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class ListViewPage extends StatelessWidget {
  ListViewPage({Key? key}) : super(key: key);

  final logic = Get.put(ListViewLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('listview'),),
      body: ListView.builder(
        itemCount: logic.nums,
        itemExtent: 50,

        itemBuilder: (BuildContext context,int index){
          return ListTile(title: Text('$index'),);
        },
      ),
    );
  }
}
