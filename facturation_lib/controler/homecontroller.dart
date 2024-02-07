import 'package:get/get.dart';

class HomeController extends GetxController {
  int counter = 0;

  void increment() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }

  //getx et  obx  pagetwo() pageThree() 
  RxInt i = 0.obs;

  void incrementgetx() {
    i++;
  
  }

  void decrementgetx() {
    i--;
    
  }
}
