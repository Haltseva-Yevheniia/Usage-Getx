
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreenController extends GetxController {

  RxBool isRed = true.obs;
  Color containerColor=Colors.red;
  RxString containerText = 'Change my color'.obs;

  void changeColor (){
    isRed.value = !isRed.value;
    isRed.value? containerColor=Colors.red :containerColor = Colors.blue;

  }

}