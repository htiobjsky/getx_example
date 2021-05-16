import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("GetX", style: TextStyle(fontSize: 20),),
          GetBuilder<CountControllerWithGetX>(
            id: "first",
              builder: (controller) {
                return Text(controller.count.toString(), style: TextStyle(fontSize: 50),);
              },),
          GetBuilder<CountControllerWithGetX>(
            id: "second",
              builder: (controller) {
                return Text(controller.count.toString(), style: TextStyle(fontSize: 50),);
              },),
          GetBuilder<CountControllerWithGetX>(
            builder: (controller) {
              return Text(controller.count.toString(), style: TextStyle(fontSize: 50),);
            },),
          _button("first"),
          _button("second"),
          ElevatedButton(onPressed: (){
         Get.find<CountControllerWithGetX>().putNumber(5);
          },child: Text("5로 변경", style: TextStyle(fontSize: 30),)),

        ],
      ),
    );
  }

  Widget _button(String id) {
    return ElevatedButton(onPressed: (){
      Get.find<CountControllerWithGetX>().increase(id);
    },child: Text("+", style: TextStyle(fontSize: 30),));
  }
}
