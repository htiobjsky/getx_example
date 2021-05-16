import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/controller/count_controller_with_getx.dart';

class BindingPage extends GetView<CountControllerWithGetX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          GetBuilder<CountControllerWithGetX>(builder: (_){
            return Text(_.count.toString());
       }),
          ElevatedButton(onPressed: (){
            controller.increase2();
            //CountControllerWithGetX.to.increase2();
            //Get.find<CountControllerWithGetX>().increase2();
          }, child: Text("button"))
        ],
      ),
    );
  }
}
