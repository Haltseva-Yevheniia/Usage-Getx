import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              child: Obx(()=>Container(
                color: controller.isRed.value? controller.containerColor=Colors.red : controller.containerColor = Colors.blue,
                height: 100,
                width: 100,
                child: Center(
                    child: Text(
                  'containerText'.tr,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                )),
              ),),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('buttonText'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
