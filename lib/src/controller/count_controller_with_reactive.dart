import 'package:get/get.dart';

class CountControllerWithReactive extends GetxController {
  RxInt count = 0.obs;
  RxDouble double = 0.0.obs;
  RxString value = "".obs;
  void increase() {
    count++;
  }
  void putNumber(int number) {
    count(number);
  }
  @override
  void onInit() {
    ever(count, (_)=>print("call ever"));
    once(count, (_)=>print("call once"));
    debounce(count, (_)=>print("last change, call once"), time: Duration(seconds: 1));
    interval(count, (_)=>print("변경되고 있는 동안 1초마다 호출"), time: Duration(seconds: 1));
    super.onInit();
  }
  @override
  void onClose() {
    super.onClose();
  }
}