
import 'package:get/get.dart';

class SecondScreenController extends GetxController {

  RxBool isCircle = false.obs;

  void changeSharp (){
    isCircle.value = !isCircle.value;
  }


}