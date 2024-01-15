import 'package:get/get.dart';

class JumpTwoLogic extends GetxController {
  int count2 = 2;
  String msg = '';

  // @override
  // void onReady() {
  //   var map = Get.arguments;
  //   print(map);
  //   // msg = map['msg'];
  //   // update();

  //   super.onReady();
  // }

  void increase() {
    count2 = ++count2;
    update();
  }
}



// 请注意，GetxController包含比较完整的生命周期回调，可以在onInit()接受传递的数据；
// 如果接收的数据需要刷新到界面上，请在onReady回调里面接收数据操作，
// onReady是在addPostFrameCallback回调中调用，刷新数据的操作在onReady进行，
// 能保证界面是初始加载完毕后才进行页面刷新操作的