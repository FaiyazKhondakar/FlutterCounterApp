import 'package:get/get.dart';

// class CounterController{
//   RxInt counter = 0.obs;
//
//   void increment(){
//     counter++;
//   }
// }


class CounterController extends GetxController{
  int counter =0;

  void increment(){
    counter++;
    update();
  }
}