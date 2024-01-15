import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'user_logic.dart';



class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<UserLogic>();
    final state = Get.find<UserLogic>().state;

    return Scaffold(appBar: AppBar(title: const Text('计数器'),),
      body: const Center(child: Text('1'),)
    );
  }


}

class content extends StatelessWidget {
  const content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(8.0),
      child: Container(),
    );
  }
}
