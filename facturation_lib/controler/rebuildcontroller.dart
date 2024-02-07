import 'package:get/get.dart';

class RebuildController extends GetxController {
  int count1 = 0;
  int count2 = 0;

  void increment() {
    count1++;
    update();
  }

  void decrement() {
    count2++;
    update();
  }

  int get sum1 => count1 + count2;

  //getx et  obx  pagetwo() pageThree()
  RxInt i = 0.obs;
  RxInt j = 0.obs;

  void incrementgetx() {
    i++;
  }

  void decrementgetx() {
    j++;
  }

  int get sum2 => i.value+j.value;
}
