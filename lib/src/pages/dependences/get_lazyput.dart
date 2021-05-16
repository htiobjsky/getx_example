import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/controller/dependency_controller.dart';

class LazyGetPut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
        onPressed: (){
          Get.find<DependencyController>().increase();
        },
      ),
    );
  }
}
