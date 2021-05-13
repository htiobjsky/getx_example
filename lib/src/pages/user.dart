import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/home.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("next page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text("${Get.arguments["name"]} : ${Get.arguments["age"]}"),
            Text("${Get.parameters['uid']}"),
            Text("${Get.parameters['name']}님 안녕하세요"),
            Text("${Get.parameters['age']}"),
            RaisedButton(
              child: Text("뒤로 이동"),
              onPressed: () {
                //Navigator.of(context).pop();
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}


