import 'package:flutter/material.dart';
import 'package:getx_example/src/controller/count_controller_with_provider.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Provider", style: TextStyle(fontSize: 20),),
          Consumer<CountControllerWithProvider>(builder: (BuildContext context, value, Widget child) {
            return Text(value.count.toString(), style: TextStyle(fontSize: 50),);
          }),
          _button(context),
        ],
      ),
    );
  }

  Widget _button(BuildContext context) {
    return RaisedButton(onPressed: (){
      Provider.of<CountControllerWithProvider>(context, listen: false).increase();
    },child: Text("+", style: TextStyle(fontSize: 30),),);
  }
}
