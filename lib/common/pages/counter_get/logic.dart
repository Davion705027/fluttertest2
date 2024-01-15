import 'package:get/get.dart';

class CountObj{
  CountObj(this.name,{this.count = 0});
  int count;
  String name;
}

class CounterGetLogic extends GetxController {
  var count = 0;

  final countObj = CountObj('davion').obs;

  void increase(){
    ++count;
    update();
  }


}
