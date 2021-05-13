import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/pages/normal/second.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("다음페이지로이동"),
              onPressed: () {
                //Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FirstPage()));
                Get.to(()=>SecondPage());
              },
            )
          ],
        ),
      ),
    );
  }
}
