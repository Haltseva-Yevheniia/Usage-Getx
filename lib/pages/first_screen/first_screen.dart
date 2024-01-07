import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:usage_of_getx/pages/second_screen/second_screen.dart';
import 'package:usage_of_getx/pages/second_screen/second_screen_binding.dart';

import 'first_screen_controller.dart';

class FirstScreen extends GetView<FirstScreenController> {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appBarTextFirstScreen'.tr),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            InkWell(
              onTap: controller.changeColor,
              child: Obx(
                () => Container(
                  color: controller.isRed.value
                      ? Colors.red
                      : Colors.blue,
                  height: 100,
                  width: 100,
                  child: Center(
                      child: Text(
                    'containerText'.tr,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  )),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: ()=> Get.to(()=>const SecondScreen(), binding: SecondScreenBinding(), ),
              child: Text('buttonText'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
