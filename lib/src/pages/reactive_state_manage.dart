import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/controller/count_controller_with_reactive.dart';

class ReactiveStateManagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CountControllerWithReactive controller = Get.put(
        CountControllerWithReactive()); //instance 화 : 이제 어디서든 이 인스턴스를 사용 가능하다.
    return Scaffold(
      appBar: AppBar(
        title: Text("Reactive state manage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "GetX",
              style: TextStyle(fontSize: 30),
            ),
            Obx(
              () => Text(
                "${controller.count.value}",
                style: TextStyle(fontSize: 50),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  controller.increase();
                },
                child: Text(
                  "+",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )),
            ElevatedButton(
                onPressed: () {
                  Get.find<CountControllerWithReactive>().putNumber(5);
                },
                child: Text(
                  "5로 변경",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
