import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal/common/routers/index.dart';

import 'logic.dart';

class JumpOnePage extends StatelessWidget {
  JumpOnePage({Key? key}) : super(key: key);

  final logic = Get.put(JumpOneLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('跨页面-one')),
        body: Center(
          child: Column(
            children: [
              GestureDetector(
                onTap: logic.increase,
                child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.red),
                    child: const Text('click')),
              ),
              GetBuilder<JumpOneLogic>(
                builder: (logic) {
                  return Text('跨页面-Two点击了 ${logic.count} 次',
                      style: const TextStyle(fontSize: 30.0));
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: logic.jumpTo,
          child: const Icon(Icons.access_time_filled),
        ));
  }
}
