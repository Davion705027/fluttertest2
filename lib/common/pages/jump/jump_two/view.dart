import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal/common/pages/jump/jump_one/logic.dart';

import 'logic.dart';

class JumpTwoPage extends StatelessWidget {
  JumpTwoPage({Key? key}) : super(key: key);

  final oneLogic = Get.put(JumpOneLogic());
  // final oneLogic = Get.find<JumpOneLogic>();
  final twoLogic = Get.put(JumpTwoLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('page-two')),
        body: Center(
            child: Column(
          children: [
            GetBuilder<JumpOneLogic>(builder: (logic) {
              return Text('onepage:count${oneLogic.count}');
            }),
            GetBuilder<JumpTwoLogic>(builder: (logic) {
              return Text('twopage:count${twoLogic.count2}');
            }),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            oneLogic.increase();
            twoLogic.increase();
          },
          child: const Icon(Icons.add),
        ));
  }
}
