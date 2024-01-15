import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class CounterGetPage extends StatelessWidget {
  CounterGetPage({Key? key}) : super(key: key);

  final logic = Get.put(CounterGetLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('计数器'),),
      body: Center(
        child: GetBuilder<CounterGetLogic>(builder: (logic){
          return Column(
            children: [
              Text('点击了${logic.count}次',style:const TextStyle(fontSize: 30)),
              const Divider(),
              Text('name:${logic.countObj.value.name}',style:const TextStyle(fontSize: 30)),
              Text('obj.count:${logic.countObj.value.count}',style:const TextStyle(fontSize: 30)),
            ],
          );
        },),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          logic.increase();
          logic.countObj.update((val) {
            val?.count = ++val.count;
            val?.name = '${val.name}${val.count}';
           });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
