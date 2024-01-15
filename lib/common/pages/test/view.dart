import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:personal/common/pages/jump/jump_one/logic.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {

    TestController controller = Get.put(TestController());
    controller.start();

    // final oneLogic = Get.find<JumpOneLogic>();
    JumpOneLogic oneLogic = Get.put(JumpOneLogic());
    return Scaffold(
      appBar: AppBar(title: const Text("test")),
      body: SafeArea(
        child: Column(
          children: [
            Text('${oneLogic.count}'),
            const Text('123'),
          ],
        ),
      ),
    );
  }
}
