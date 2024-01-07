
import 'package:get/get.dart';

import 'second_screen_controller.dart';

class SecondScreenBinding implements Bindings {

  @override
  void dependencies (){
    Get.lazyPut(() => SecondScreenController());
  }
}