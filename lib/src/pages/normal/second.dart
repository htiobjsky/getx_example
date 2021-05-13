import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/home.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second page"),
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
                //Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_)=>Home()), (route) => false);
                //Get.to(()=>Home()); 뒤로가기 버튼이 남
                Get.offAll(Home());
              },
            ),
          ],
        ),
      ),
    );
  }
}
