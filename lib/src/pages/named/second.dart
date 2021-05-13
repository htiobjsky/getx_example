import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/home.dart';

class SecondNamedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second named page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("뒤로 이동"),
              onPressed: () {
                //Navigator.of(context).pop();
                Get.back();
              },
            ),
            RaisedButton(
              child: Text("홈으로 이동"),
              onPressed: () {
                Get.offAllNamed("/");
              },
            ),
          ],
        ),
      ),
    );
  }
}
