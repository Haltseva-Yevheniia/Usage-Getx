
import 'package:get/get.dart';
import 'package:usage_of_getx/pages/first_screen/first_screen_controller.dart';

class FirstScreenBinding implements Bindings {
  @override
  void dependencies (){
    Get.lazyPut(() => FirstScreenController());
  }


}