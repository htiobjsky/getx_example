import 'package:flutter/material.dart';
import 'package:getx_example/src/customkeyboard/keyboardkey.dart';
import 'package:intl/intl.dart';

class CustomKeyBoardPage extends StatefulWidget {
  @override
  _CustomKeyBoardPageState createState() => _CustomKeyBoardPageState();
}

class _CustomKeyBoardPageState extends State<CustomKeyBoardPage> {
  List<List<dynamic>> keys;
  String amount;

  @override
  void initState() {
    super.initState();

    keys = [
      ['1', '2', '3'],
      ['4', '5', '6'],
      ['7', '8', '9'],
      ['00', '0', Icon(Icons.keyboard_backspace)],
    ];

    amount = "";
  }

  onKeyTap(val) {
    if(val == "0" && amount.length ==0){
      return;
    }
    setState(() {
      amount = amount + val;
    });
  }

  onBackspacePress() {
    if(amount.length ==0) {
      return;
    }
    setState(() {
      amount = amount.substring(0, amount.length - 1);
    });
  }

  renderKeyboard() {
    return keys
        .map((x) => Row(
              children: x.map((y) {
                return Expanded(
                    child: KeyboardKey(
                        label: y,
                        value: y,
                        onTap: (val) {
                          if (val is Widget) {
                            onBackspacePress();
                          } else {
                            onKeyTap(val);
                          }
                        }));
              }).toList(),
            ))
        .toList();
  }

  renderAmount() {
    String display = "보낼금액";
    TextStyle style = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    );

    if(this.amount.length >0) {
      NumberFormat f = NumberFormat('#,###');
      display = f.format(int.parse(amount)) + "원";
      style = style.copyWith(
        color: Colors.black,
      );
    }

    return Expanded(
        child: Center(
            child: Text(
              display,
      style: style,
    )));
  }

  renderconfirmButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                  onPressed: (){
                    //다음라우트로 값을 보내면 된다
                  },
                  style: amount.length >0 ? TextButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                  ): TextButton.styleFrom(
                    backgroundColor: Colors.grey[700],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      "확인",
                      style: TextStyle(
                        color: amount.length >0 ? Colors.white : Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ))),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //children: renderKeyboard().toList(),
          children: [
            renderAmount(),
            ...renderKeyboard(),
            renderconfirmButton(),
          ],
        ),
      ),
    );
  }
}
