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
          _button("first"),
          _button("second"),
        ],
      ),
    );
  }

  Widget _button(String id) {
    return RaisedButton(onPressed: (){
      Get.find<CountControllerWithGetX>().increase(id);
    },child: Text("+", style: TextStyle(fontSize: 30),));
  }
}
