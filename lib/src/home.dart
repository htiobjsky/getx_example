import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/src/pages/normal/first.dart';
import 'package:getx_example/src/pages/reactive_state_manage.dart';
import 'package:getx_example/src/pages/simple_state_manage.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("일반적인 라우트"),
              onPressed: () {
                //Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FirstPage()));
                Get.to(()=>FirstPage());
              },
            ),
            RaisedButton(
              child: Text("Named 라우트"),
              onPressed: () {
                //Navigator.of(context).pushNamed("/first");
                Get.toNamed("/first");
              },
            ),
            RaisedButton(
              child: Text("argument 전달"),
              onPressed: () {
                //Navigator.of(context).pushNamed("/first");
                //Get.toNamed("/next", arguments: {"name" : "bjsky", "age" : 6});
                Get.toNamed("/next", arguments: User(name: "bj", age: 9));
              },
            ),
            RaisedButton(
              child: Text("dynamic url"),
              onPressed: () {
                Get.toNamed("/user/233?name=범준&age=22");
              },
            ),
            RaisedButton(
              child: Text("단순 상태 관리"),
              onPressed: () {
                Get.to(SimpleStateManagePage());
              },
            ),
            RaisedButton(
              child: Text("반응형 상 관리"),
              onPressed: () {
                Get.to(ReactiveStateManagePage());
              },
            )
          ],
        ),
      ),
    );
  }
}


class User{
  String name;
  int age;
  User({this.name, this.age});
}
