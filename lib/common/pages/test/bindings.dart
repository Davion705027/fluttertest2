import 'package:get/get.dart';
import 'package:personal/common/pages/jump/jump_one/logic.dart';

import 'controller.dart';

class TestBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestController>(() => TestController());
    Get.lazyPut<JumpOneLogic>(() => JumpOneLogic());
  }
}
