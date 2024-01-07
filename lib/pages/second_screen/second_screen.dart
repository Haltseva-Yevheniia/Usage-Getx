import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'second_screen_controller.dart';


class SecondScreen extends GetView<SecondScreenController>{
  const SecondScreen({super.key});

  //SecondScreenController controller = SecondScreenController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appBarTextSecondScreen'.tr),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () => ElevatedButton(
            onPressed: () {
              controller.changeSharp();
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: controller.isCircle.value
                      ? BorderRadius.circular(20)
                      : BorderRadius.zero,
                ),
              ),
            ),
            child: controller.isCircle.value
                ? Text('buttonTextSecondScreenPressed'.tr)
                : Text('buttonTextSecondScreenUnpressed'.tr),
          ),
        ),
      ),
    );
  }
}
