import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/pages/normal/second.dart';

class FirstNamedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first named page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("다음페이지로이동"),
              onPressed: () {
                Get.offNamed('/second');
                //Get.toNamed('/second');
              },
            )
          ],
        ),
      ),
    );
  }
}
