import 'package:get/get.dart';
import 'package:personal/common/routers/index.dart';

class JumpOneLogic extends GetxController {
  int count = 10;

  void jumpTo() {
    Get.toNamed(RouteNames.jumeTwoPage,
        arguments: {"count": count, "msg": "传值"});
  }

  void increase() {
    count = ++count;
    update();
  }
}
