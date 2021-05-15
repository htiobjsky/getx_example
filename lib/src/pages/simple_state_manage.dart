import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/controller/count_controller_with_getx.dart';
import 'package:getx_example/src/controller/count_controller_with_provider.dart';
import 'package:getx_example/src/pages/state/with_getx.dart';
import 'package:getx_example/src/pages/state/with_provider.dart';
import 'package:provider/provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithGetX()); //instance 화 : 이제 어디서든 이 인스턴스를 사용 가능하다.
    return Scaffold(
      appBar: AppBar(
        title: Text("simple state manage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: WithGetX(),),
            // ignore: missing_required_param
            Expanded(child: ChangeNotifierProvider<CountControllerWithProvider>(
              create: (BuildContext context) => CountControllerWithProvider(),
              child: WithProvider(),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
