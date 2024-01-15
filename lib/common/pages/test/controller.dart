import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:personal/test/coldmiss.dart';

import 'index.dart';

class TestController extends GetxController {
  TestController();

  final state = TestState();

  start() async {
    final lott = await rootBundle.loadString('assets/json/lottery.json');
    final lotteryJson = json.decode(lott);
  

    /************************ lhc ***********************/
    // final lhc = await rootBundle.loadString('assets/lhc/history.json');
    // final lhcJson = json.decode(lhc);
    // final lhcdouble = await rootBundle.loadString('assets/lhc/double.json');
    // final lhcdoubleJson = json.decode(lhcdouble);
    // // final res = coldmissCalculator('standard', 297, lhcJson, lotteryJson, lhcdoubleJson, 4, 10);
    // final res = coldmissCalculator('double', 297, lhcJson, lotteryJson, lhcdoubleJson, 4, 10);
    // print(res);

    /************************ pk10 ***********************/
    final pk10 = await rootBundle.loadString('assets/pk10/history.json');
    final pk10Json = json.decode(pk10);
    final pkdouble = await rootBundle.loadString('assets/pk10/double.json');
    final pkdoubleJson = json.decode(pkdouble);
    // final res = coldmissCalculator('double', 293, pk10Json, lotteryJson, pkdoubleJson, 4, 10);
    final res = coldmissCalculator('standard', 293, pk10Json, lotteryJson, pkdoubleJson, 4, 10);
    print(res);

    /************************ k3 ***********************/
    // final k3double = await rootBundle.loadString('assets/k3/double.json');
    // final k3doubleJson = json.decode(k3double);
    // final k3 = await rootBundle.loadString('assets/k3/history.json');
    // final k3Json = json.decode(k3);
    // print(k3Json);
    // final res = coldmissCalculator('standard', 277, k3Json, lotteryJson, pkdoubleJson, 4, 10);
    // print(res);

    // final syxw = await rootBundle.loadString('assets/json/11x5history.json');
    // final syxwJson = json.decode(syxw);


    /************************ 3d ***********************/
    // final syxw = await rootBundle.loadString('assets/3d/history.json');
    // final syxwJson = json.decode(syxw);
    // final syxwdouble = await rootBundle.loadString('assets/3d/double.json');
    // final syxwdoubleJson = json.decode(syxwdouble);
    // final res = coldmissCalculator('double', 188, syxwJson, lotteryJson, syxwdoubleJson, 4, 10);
    // print(res);
    /************************ 11x5 ***********************/
    // final syxw = await rootBundle.loadString('assets/11x5/history.json');
    // final syxwJson = json.decode(syxw);
    // final syxwdouble = await rootBundle.loadString('assets/11x5/double.json');
    // final syxwdoubleJson = json.decode(syxwdouble);
    // final res = coldmissCalculator('double', 294, syxwJson, lotteryJson, syxwdoubleJson, 4, 10);
    // print(res);


    

    // k3double
    // final res = coldmissCalculator('double', 295, k3Json, lotteryJson, k3doubleJson, 4, 10);
    // print(res);


    // final res = coldmissCalculator('double', 294, syxwJson, lotteryJson, doubleJson, 4, 10);
    // print(res);


    // final his = await rootBundle.loadString('assets/json/history.json');
    // final historyJson = json.decode(his);
    // final double = await rootBundle.loadString('assets/json/double.json');
    // final doubleJson = json.decode(double);
    // final res = coldmissCalculator('standard', 292, historyJson, lotteryJson, [], 4, 10);
    // print(res);
    // final res2 = coldmissCalculator('double', 292, historyJson, lotteryJson, doubleJson, 4, 10);
    // print(res2);
  }

  // tap
  void handleTap(int index) {
    Get.snackbar(
      "标题",
      "消息",
    );
  }

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
  }

  /// 在 onInit() 之后调用 1 帧。这是进入的理想场所
  @override
  void onReady() {
    super.onReady();
  }

  /// 在 [onDelete] 方法之前调用。
  @override
  void onClose() {
    super.onClose();
  }

  /// dispose 释放内存
  @override
  void dispose() {
    super.dispose();
  }
}
